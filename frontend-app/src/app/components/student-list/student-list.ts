// student-list.component.ts
import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';
import { StudentService } from '../../services/student';
import { Student } from '../../models/student';

@Component({
  selector: 'app-student-list',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './student-list.html'
})
export class StudentListComponent {
  students: Student[] = [];

  constructor(private studentService: StudentService) {}

  loadStudents() {
    this.studentService.getStudents().subscribe({
      next: (data) => (this.students = data),
      error: (err) => console.error('Error fetching students', err)
    });
  }
}