import pygame
from snake import Snake
from food import Food

# Constants
SCREEN_WIDTH = 600
SCREEN_HEIGHT = 400
CELL_SIZE = 20
FPS = 10
WHITE = (255, 255, 255)

def main():
    pygame.init()
    clock = pygame.time.Clock()
    screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT))
    pygame.display.set_caption("Snake Game")
    snake = Snake()
    food = Food()

    while True:
        screen.fill(WHITE)
        snake.handle_keys()
        snake.move()
        
        if snake.get_head_position() == food.position:
            snake.length += 1
            food.randomize_position()

        snake.draw(screen)
        food.draw(screen)
        pygame.display.update()
        clock.tick(FPS)

if __name__ == "__main__":
    main()
