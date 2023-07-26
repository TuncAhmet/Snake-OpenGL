#include "Square.hpp"
#include <cstdlib>
#include <random>
#include <chrono>

unsigned seed = std::chrono::system_clock::now().time_since_epoch().count();
std::mt19937 generator(seed);
std::uniform_real_distribution<float> distribution(-0.8f, 0.8f);

Square::Square(float x, float y, float length)
{
    m_Position = glm::vec3(x, y, 0.0f);
    m_Color.r = (10 + std::rand() % 15) / 25.0;
    m_Color.g = (10 + std::rand() % 15) / 25.0;
    m_Length = length;
    m_Direction = DIR_RIGHT;
    m_IsEated = false;
}
glm::vec3 Square::getPosition()
{
    return m_Position;
}
void Square::setRandomPosition()
{
    float x = static_cast<float>(std::round(distribution(generator) / 0.08)) * 0.08;
    float y = static_cast<float>(std::round(distribution(generator) / 0.08)) * 0.08;
    m_Position.x = x;
    m_Position.y = y;
}
glm::vec4 Square::getColor()
{
    return m_Color;
}
Square::DIRECTION Square::getDirection()
{
    return m_Direction;
}
void Square::setDirection(Square::DIRECTION dir)
{
    m_Direction = dir;
}
bool Square::getIsEated()
{
    return m_IsEated;
}
void Square::setIsEated(bool x)
{
    m_IsEated = x;
}
void Square::move()
{
    switch (m_Direction)
    {
    case DIR_LEFT:
        m_Position -= glm::vec3(m_Length, 0.0f, 0.0f);
        break;
    case DIR_RIGHT:
        m_Position += glm::vec3(m_Length, 0.0f, 0.0f);
        break;
    case DIR_UP:
        m_Position += glm::vec3(0.0f, m_Length, 0.0f);
        break;
    case DIR_DOWN:
        m_Position -= glm::vec3(0.0f, m_Length, 0.0f);
        break;
    }
}