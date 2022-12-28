.class Lwww/littlefoxes/reftime/replan/PlanAndRecordAdapter$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;


# instance fields
.field linearLayout:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lwww/littlefoxes/reftime/replan/PlanAndRecordAdapter;

.field tvName:Landroid/widget/TextView;

.field tvUnicode:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lwww/littlefoxes/reftime/replan/PlanAndRecordAdapter;Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lwww/littlefoxes/reftime/replan/PlanAndRecordAdapter$MyViewHolder;->this$0:Lwww/littlefoxes/reftime/replan/PlanAndRecordAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090029

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lwww/littlefoxes/reftime/replan/PlanAndRecordAdapter$MyViewHolder;->linearLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0900af

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwww/littlefoxes/reftime/replan/PlanAndRecordAdapter$MyViewHolder;->tvName:Landroid/widget/TextView;

    const v0, 0x7f090164

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lwww/littlefoxes/reftime/replan/PlanAndRecordAdapter$MyViewHolder;->tvUnicode:Landroid/widget/TextView;

    return-void
.end method
