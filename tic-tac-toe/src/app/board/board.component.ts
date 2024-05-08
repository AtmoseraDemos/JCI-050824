import { Component } from '@angular/core';

@Component({
  selector: 'app-board',
  templateUrl: './board.component.html',
  styleUrls: ['./board.component.css']
})
export class BoardComponent {
  squares: string[] = Array(9).fill(null);
  xIsNext: boolean = true;

  handleClick(index: number): void {
    if (this.squares[index] || this.calculateWinner()) {
      return;
    }

    this.squares[index] = this.xIsNext ? 'X' : 'O';
    this.xIsNext = !this.xIsNext;
  }

  calculateWinner(): string | null {
    const lines = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6]
    ];

    for (const [a, b, c] of lines) {
      if (
        this.squares[a] &&
        this.squares[a] === this.squares[b] &&
        this.squares[a] === this.squares[c]
      ) {
        return this.squares[a];
      }
    }

    return null;
  }

  isBoardFull(): boolean {
    return this.squares.every(square => square !== null);
  }

  resetBoard(): void {
    this.squares = Array(9).fill(null);
    this.xIsNext = true;
  }
}