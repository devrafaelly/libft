int ft_lstsize(t_list *lst)
{
    t_list  *temp;
    int n;

    temp = lst;
    n = 0;
    while (temp != NULL)
    {
        n++;
        temp = temp->next;
    }
    return (n);
}