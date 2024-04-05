import java.awt.*;

public class Block {

    public static final int SIZE = 20;

    private final Color color;
    private int x;
    private int y;

    public Block(Color color, int x, int y) {
        this.color = color;
        this.x = x;
        this.y = y;
    }

    public void draw(Graphics g) {
        g.setColor(color);
        g.fillRect(x * SIZE, y * SIZE, SIZE, SIZE);
    }

    public void moveLeft() {
        x--;
    }

    public void moveRight() {
        x++;
    }

    public void moveDown() {
        y++;
    }

    // Implement other methods as needed
}
