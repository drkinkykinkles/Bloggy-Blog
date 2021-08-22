import React from 'react';
import { BlogNavbar } from './Components/BlogNavbar';

/**
 * This is where all the main parts of the app are gonna go
 * I'm talking any global navbars, drawers, etc...
 * @returns 
 */
export function AppIndex() {
    return (
        <div>
            <BlogNavbar/>
        </div>
    );
}