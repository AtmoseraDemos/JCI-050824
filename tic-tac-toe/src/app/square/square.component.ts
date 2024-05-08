import { Component, Input, Output, EventEmitter } from '@angular/core';

@Component({
  selector: 'app-square',
  templateUrl: './square.component.html',
  styleUrls: ['./square.component.css']
})
export class SquareComponent {
  @Input() value: string;
  @Output() squareClick: EventEmitter<void> = new EventEmitter<void>();

  onClick(): void {
    this.squareClick.emit();
  }
}