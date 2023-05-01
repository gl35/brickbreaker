//intro
   	.global SF2OpeningTheme_left
   	.global SF2OpeningTheme_right
//start button pressed
	.global startPressed_left
	.global startpressed_right
//died
	.global died_left
	.global died_right
//gameplay
//	.global SF2GuileTheme_left
//	.global SF2GuileTheme_right
//stage clear
	.global stageClear_left
	.global stageClear_right
//hitBrick
	.global hitBrick_left
	.global hitBrick_right
//hitPaddle
	.global hitPaddle_left
	.global hitPaddle_right
//speedup
	.global speedup_left
	.global speedup_right
//gameover
//	.global godofgambler_left
//	.global godofgambler_right

    .section .rodata

SF2OpeningTheme_left:
    .incbin "C:/Users/gene_/workspace/en894_final2/asset/datafiles/SF2OpeningTheme_left.data"
SF2OpeningTheme_right:
    .incbin "C:/Users/gene_/workspace/en894_final2/asset/datafiles/SF2OpeningTheme_right.data"

startPressed_left:
    .incbin "C:/Users/gene_/workspace/en894_final2/asset/datafiles/startPressed_left.data"
startpressed_right:
    .incbin "C:/Users/gene_/workspace/en894_final2/asset/datafiles/startpressed_right.data"

died_left:
	.incbin "C:/Users/gene_/workspace/en894_final2/asset/datafiles/died_left.data"
died_right:
	.incbin "C:/Users/gene_/workspace/en894_final2/asset/datafiles/died_right.data"

/*SF2GuileTheme_left:
	.incbin "C:/Users/gene_/workspace/en894_final2/asset/datafiles/SF2GuileTheme_left.data"
SF2GuileTheme_right:
	.incbin "C:/Users/gene_/workspace/en894_final2/asset/datafiles/SF2GuileTheme_right.data"*/

stageClear_left:
	.incbin "C:/Users/gene_/workspace/en894_final2/asset/datafiles/stageClear_left.data"
stageClear_right:
	.incbin "C:/Users/gene_/workspace/en894_final2/asset/datafiles/stageClear_right.data"

hitBrick_left:
	.incbin "C:/Users/gene_/workspace/en894_final2/asset/datafiles/hitBrick_left.data"
hitBrick_right:
	.incbin "C:/Users/gene_/workspace/en894_final2/asset/datafiles/hitBrick_right.data"

hitPaddle_left:
	.incbin "C:/Users/gene_/workspace/en894_final2/asset/datafiles/hitPaddle_left.data"
hitPaddle_right:
	.incbin "C:/Users/gene_/workspace/en894_final2/asset/datafiles/hitPaddle_right.data"

speedup_left:
	.incbin "C:/Users/gene_/workspace/en894_final2/asset/datafiles/speedup_left.data"
speedup_right:
	.incbin "C:/Users/gene_/workspace/en894_final2/asset/datafiles/speedup_right.data"

//godofgambler_left:
//	.incbin "C:/Users/gene_/workspace/en894_final2/asset/datafiles/godofgambler_left.data"
//godofgambler_right:
//	.incbin "C:/Users/gene_/workspace/en894_final2/asset/datafiles/godofgambler_right.data"



/*1:
SF2OpeningTheme_left_size:
    .word 5037804 - SF2OpeningTheme_left

SF2OpeningTheme_right_size:
    .word 5037804 - SF2OpeningTheme_right
/*.word 38388*/
