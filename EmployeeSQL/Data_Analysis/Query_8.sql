-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, count(last_name) AS cnt
FROM employees
GROUP BY last_name
ORDER by cnt DESC