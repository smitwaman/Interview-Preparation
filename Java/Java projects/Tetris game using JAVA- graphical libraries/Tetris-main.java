import javax.swing.*;

public class Tetris extends JFrame {

    public Tetris() {
        initUI();
    }

    private void initUI() {
        Board board = new Board(this);
        add(board);

        setTitle("Tetris");
        setSize(Board.BOARD_WIDTH * Block.SIZE, Board.BOARD_HEIGHT * Block.SIZE);
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        setLocationRelativeTo(null);
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> {
            Tetris game = new Tetris();
            game.setVisible(true);
        });
    }
}
