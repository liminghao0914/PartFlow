.class Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;


# instance fields
.field background:Landroid/widget/LinearLayout;

.field nameTV:Landroid/widget/TextView;

.field final synthetic this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;

.field unicodeTV:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$ViewHolder;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0900af

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$ViewHolder;->nameTV:Landroid/widget/TextView;

    const v0, 0x7f090164

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$ViewHolder;->unicodeTV:Landroid/widget/TextView;

    const v0, 0x7f090029

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$ViewHolder;->background:Landroid/widget/LinearLayout;

    return-void
.end method
