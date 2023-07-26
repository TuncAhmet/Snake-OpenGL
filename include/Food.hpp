#ifndef FOOD_HPP
#define FOOD_HPP

#include "Square.hpp"
#include <glm/vec3.hpp>

class Food : public Square
{
public:
    Food(float x, float y, float size) : position(glm::vec3(x, y, 0.0f)), size(size) {}

private:
    bool m_IsEated;
};

#endif // FOOD_HPP