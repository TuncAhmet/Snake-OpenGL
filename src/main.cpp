#include <iostream>
#include <thread> // std::this_thread::sleep_for
#include <chrono> // std::chrono::seconds
#include <glad/glad.h>
#include <glm/vec3.hpp>
#include <GLFW/glfw3.h>
#include <vector>

#include "ShaderProgram.hpp"
#include "Square.hpp"
float length = 0.08;

// noktalara ait koordinat bilgileri.
float vertices[] = {
    -length / 2,
    length / 2,
    0.0f,
    -length / 2,
    -length / 2,
    0.0f,
    length / 2,
    -length / 2,
    0.0f,

    -length / 2,
    length / 2,
    0.0f,
    length / 2,
    -length / 2,
    0.0f,
    length / 2,
    length / 2,
    0.0f,

};

std::vector<Square *> snakeList;
Square *food = new Square(0.0f, 0.0f, length);

// OpenGL nesnelerinin id değerlerini tutacak olan değişkenler

unsigned int VBO;
unsigned int VAO;

void wallCollisionChecker()
{
    Square *head = snakeList[0];
    if (abs(head->getPosition().x) >= 1.0f || abs(head->getPosition().y) >= 1.0f)
    {
        if (head->getDirection() == Square::DIR_LEFT)
        {
            head->setDirection(Square::DIR_RIGHT);
        }
        else if (head->getDirection() == Square::DIR_RIGHT)
        {
            head->setDirection(Square::DIR_LEFT);
        }
        else if (head->getDirection() == Square::DIR_DOWN)
        {
            head->setDirection(Square::DIR_UP);
        }
        else if (head->getDirection() == Square::DIR_UP)
        {
            head->setDirection(Square::DIR_DOWN);
        }
    }
}
void collisionChecker()
{
    Square *head = snakeList[0];
    glm::vec3 headPos = head->getPosition();
    glm::vec3 foodPos = food->getPosition();
    if (abs(foodPos.x) >= abs(headPos.x) - 0.02 && abs(foodPos.x) <= abs(headPos.x) + 0.02 && abs(foodPos.y) >= abs(headPos.y) - 0.02 && abs(foodPos.y) <= abs(headPos.y) + 0.02)
    {
        food->setIsEated(true);
    }
}
void moveSnake()
{
    for (auto next : snakeList)
    {
        next->move();
    }

    for (int i = snakeList.size() - 1; i > 0; i--)
    {
        snakeList[i]->setDirection(snakeList[i - 1]->getDirection());
    }
    collisionChecker();
    wallCollisionChecker();
}

void drawSnake(ShaderProgram &program)
{

    for (auto next : snakeList)
    {
        program.setVec3("uMove", next->getPosition());
        program.setVec4("uColor", next->getColor());
        glDrawArrays(GL_TRIANGLES, 0, 6);
    }
}
void addToSnakeTail()
{
    int elementCount = snakeList.size();

    if (elementCount == 0)
    {
        snakeList.push_back(new Square(0.0f, 0.0f, length));
    }
    if (food->getIsEated())
    {
        Square *lastSquare = snakeList[elementCount - 1];

        glm::vec3 pos = lastSquare->getPosition();

        Square::DIRECTION dir = lastSquare->getDirection();

        switch (dir)
        {
        case Square::DIR_RIGHT:
            pos -= glm::vec3(length, 0.0f, 0.0f);
            break;
        case Square::DIR_LEFT:
            pos += glm::vec3(length, 0.0f, 0.0f);
            break;
        case Square::DIR_UP:
            pos -= glm::vec3(0.0f, length, 0.0f);
            break;
        case Square::DIR_DOWN:
            pos += glm::vec3(0.0f, length, 0.0f);
            break;
        }

        Square *newSquare = new Square(pos.x, pos.y, length);

        newSquare->setDirection(dir);

        snakeList.push_back(newSquare);
    }
}
void drawFood(ShaderProgram &program)
{
    addToSnakeTail();
    glm::vec3 foodPosition = food->getPosition();
    program.setVec3("uMove", foodPosition);
    program.setVec4("uColor", food->getColor());
    glDrawArrays(GL_TRIANGLES, 0, 6);

    if (food->getIsEated())
    {
        food->setIsEated(false);
        food->setRandomPosition();
    }
}

void key_callback(GLFWwindow *window, int key, int scancode, int action, int mods)
{
    Square *head = snakeList[0];
    Square::DIRECTION headDir = head->getDirection();
    if (key == GLFW_KEY_ESCAPE)
        glfwTerminate();
    if (action == GLFW_PRESS)
    {
        if (snakeList.size() != 0)
        {
            Square *first = snakeList[0];

            if (key == GLFW_KEY_LEFT)
            {
                if (headDir != Square::DIR_RIGHT)
                    first->setDirection(Square::DIR_LEFT);
            }
            if (key == GLFW_KEY_RIGHT)
            {
                if (headDir != Square::DIR_LEFT)
                    first->setDirection(Square::DIR_RIGHT);
            }
            if (key == GLFW_KEY_UP)
            {
                if (headDir != Square::DIR_DOWN)
                    first->setDirection(Square::DIR_UP);
            }
            if (key == GLFW_KEY_DOWN)
            {
                if (headDir != Square::DIR_UP)
                    first->setDirection(Square::DIR_DOWN);
            }
        }
    }
}

int main(int argc, char **argv)
{
    if (!glfwInit())
        return -1;

    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    GLFWwindow *window = glfwCreateWindow(800, 800, "İLk Programım", NULL, NULL);
    if (window == NULL)
    {
        std::cout << "Pencere Olusturulamadi" << std::endl;

        glfwTerminate();

        return -1;
    }
    glfwSetKeyCallback(window, key_callback);
    glfwMakeContextCurrent(window);

    if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress))
    {
        std::cout << "Failed to initialize GLAD" << std::endl;
        return -1;
    }

    addToSnakeTail();
    addToSnakeTail();
    addToSnakeTail();
    addToSnakeTail();
    addToSnakeTail();
    addToSnakeTail();

    ShaderProgram program;

    program.attachShader("./shaders/simplevs.glsl", GL_VERTEX_SHADER);
    program.attachShader("./shaders/simplefs.glsl", GL_FRAGMENT_SHADER);
    program.link();

    program.addUniform("uMove");
    program.addUniform("uColor");

    // vertex array object oluşturuluyor
    glGenVertexArrays(1, &VAO);
    // vertex buffer object oluşuruluyor
    glGenBuffers(1, &VBO);

    // vertex array object aktif edildi.
    glBindVertexArray(VAO);
    // vertex buffer nesnesi aktif edildi.
    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    // vertex buffer'a nokta bilgileri ytollanıyor
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);
    // gönderilen vertex'e ait özellikler etiketleniyor
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float), (void *)0);
    // özellik  etiket i aktif ediliyor.
    glEnableVertexAttribArray(0);

    while (!glfwWindowShouldClose(window))
    {
        // oluşturulacak resim başlangıç rengine boyanıyor
        glClearColor(0.0f, 0.4f, 0.7f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);

        // çizimde kullanılacak olan program nesnesi aktif ediliyor
        program.use();

        // çizimde kullanılacak olan Vertex array object aktif ediliyor
        glBindVertexArray(VAO);

        drawSnake(program);

        moveSnake();

        drawFood(program);

        std::this_thread::sleep_for(std::chrono::milliseconds(90));

        glfwSwapBuffers(window);

        glfwPollEvents();
    }
}