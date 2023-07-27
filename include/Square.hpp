#ifndef SQUARE_HPP
#define SQUARE_HP

#include <glm/vec3.hpp>
#include <glm/vec4.hpp>

class Square
{
public:
    enum DIRECTION
    {
        DIR_RIGHT = 1,
        DIR_LEFT = -1,
        DIR_UP = 2,
        DIR_DOWN = -2
    };

    Square(float x, float y, float length);
    glm::vec3 getPosition();
    void setRandomPosition();
    void setXPosition(float x);
    void setYPosition(float y);
    glm::vec4 getColor();
    DIRECTION getDirection();
    void setDirection(DIRECTION dir);
    bool getIsEated();
    void setIsEated(bool x);
    void move();

private:
    glm::vec3 m_Position;
    glm::vec4 m_Color;
    float m_Length;
    bool m_IsEated;

    DIRECTION m_Direction;
};

#endif // square_hpp