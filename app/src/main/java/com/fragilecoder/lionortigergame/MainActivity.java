package com.fragilecoder.lionortigergame;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.GridLayout;
import android.widget.ImageView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    enum Player {
        ONE, TWO, Tie
    }

    Player currentPlayer = Player.ONE;

    Player[] playerChoices = new Player[9];

    int[][] winnerRowsColumns = {{0, 1, 2}, {3, 4, 5}, {6, 7, 8}, {0, 3, 6},
            {1, 4, 7}, {2, 5, 8}, {0, 4, 8}, {2, 4, 6}};

    private boolean gameOver = false;

    private Button btnReset;

    private GridLayout gridLayout;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        gridLayout = findViewById(R.id.gridLayout);

//        playerChoices[0] = Player.Tie;
//        playerChoices[1] = Player.Tie;
//        playerChoices[2] = Player.Tie;
//        playerChoices[3] = Player.Tie;
//        playerChoices[4] = Player.Tie;
//        playerChoices[5] = Player.Tie;
//        playerChoices[6] = Player.Tie;
//        playerChoices[7] = Player.Tie;
//        playerChoices[8] = Player.Tie;

        PlayercHOICES();




        btnReset = findViewById(R.id.btnReset);

        btnReset.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                resetTheGame();

            }
        });
    }




    public void imageViewIsTapped(View imageView) {

        ImageView tappedImageView = (ImageView) imageView;
        int toTag = Integer.parseInt(tappedImageView.getTag().toString());

        if (playerChoices[toTag] == Player.Tie && gameOver == false) {


            tappedImageView.setTranslationX(-2000);


            playerChoices[toTag] = currentPlayer;

            if (currentPlayer == Player.ONE) {
                tappedImageView.setImageResource(R.drawable.lion);
                currentPlayer = Player.TWO;
            } else if (currentPlayer == Player.TWO) {
                tappedImageView.setImageResource(R.drawable.tiger);
                currentPlayer = Player.ONE;
            }

            tappedImageView.animate().translationXBy(2000).alpha(1).rotationBy(36000)
                    .setDuration(1000);


//        Toast.makeText(this, tappedImageView.getTag().toString(),Toast.LENGTH_SHORT).show();

            for (int[] winnerColumns : winnerRowsColumns) {

                if (playerChoices[winnerColumns[0]] == playerChoices[winnerColumns[1]] &&
                        playerChoices[winnerColumns[1]] == playerChoices[winnerColumns[2]] && playerChoices[winnerColumns[0]] != Player.Tie) {

                    btnReset.setVisibility(View.VISIBLE);


                    gameOver = true;

                    String winnerOfGame = " ";

                    if (currentPlayer == Player.ONE) {
                        winnerOfGame = "Player Two";
                    } else if (currentPlayer == Player.TWO) {
                        winnerOfGame = "Player One";
                    }
                    Toast.makeText(this, winnerOfGame + " is the winner", Toast.LENGTH_LONG).show();

                }


            }
        }
        }

        // Reset Game Function

    private void resetTheGame() {



        for (int i = 0 ; i < gridLayout.getChildCount(); i++) {
            ImageView imageView = (ImageView) gridLayout.getChildAt(i);

            imageView.setImageDrawable(null);
        }

        currentPlayer = Player.ONE;
//        playerChoices[0] = Player.Tie;
////        playerChoices[1] = Player.Tie;
////        playerChoices[2] = Player.Tie;
////        playerChoices[3] = Player.Tie;
////        playerChoices[4] = Player.Tie;
////        playerChoices[5] = Player.Tie;
////        playerChoices[6] = Player.Tie;
////        playerChoices[7] = Player.Tie;
////        playerChoices[8] = Player.Tie;

        PlayercHOICES();

        gameOver = false;

        btnReset.setVisibility(View.INVISIBLE);

    }

    private void PlayercHOICES() {


        for (int i = 0; i < playerChoices.length ; i++) {
            playerChoices[i] = Player.Tie;
        }


    }

    }
