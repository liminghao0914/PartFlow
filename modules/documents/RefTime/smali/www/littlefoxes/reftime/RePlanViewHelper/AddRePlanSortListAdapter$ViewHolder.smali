.class Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;


# instance fields
.field recyclerView:Landroid/support/v7/widget/RecyclerView;

.field textView:Landroid/widget/TextView;

.field final synthetic this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;


# direct methods
.method public constructor <init>(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter$ViewHolder;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090125

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    const v0, 0x7f09001c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter$ViewHolder;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method
