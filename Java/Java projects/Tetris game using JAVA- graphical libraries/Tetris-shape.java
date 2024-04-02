import java.awt.*;

public class Shape {

    private Block[] blocks;
    private Color color;

    public Shape(Block[] blocks, Color color) {
        this.blocks = blocks;
        this.color = color;
    }

    public void draw(Graphics g) {
        for (Block block : blocks) {
            block.draw(g);
        }
    }

    // Implement methods for rotating, moving, etc.
}
