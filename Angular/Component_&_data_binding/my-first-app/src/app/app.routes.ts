import { Routes } from '@angular/router';
import { Home } from './Components/home/home';
import { StudentAdd } from './Components/student-add/student-add';
import { StudentList } from './Components/student-list/student-list';

export const routes: Routes = [
    {path:'',component:Home},
    {path:'home',component:Home},
    {path:'student-add',component:StudentAdd},
    {path:'student-list',component:StudentList}
];
