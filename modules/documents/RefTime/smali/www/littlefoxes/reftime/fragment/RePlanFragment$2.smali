.class Lwww/littlefoxes/reftime/fragment/RePlanFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyRePlanClick;


# instance fields
.field final synthetic this$0:Lwww/littlefoxes/reftime/fragment/RePlanFragment;


# direct methods
.method constructor <init>(Lwww/littlefoxes/reftime/fragment/RePlanFragment;)V
    .registers 2

    iput-object p1, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment$2;->this$0:Lwww/littlefoxes/reftime/fragment/RePlanFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public RePlanClick(Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    if-eqz p1, :cond_49

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment$2;->this$0:Lwww/littlefoxes/reftime/fragment/RePlanFragment;

    iget-object v2, v2, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->scrollView:Landroid/support/v4/widget/NestedScrollView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/NestedScrollView;->setVisibility(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment$2;->this$0:Lwww/littlefoxes/reftime/fragment/RePlanFragment;

    iget-object v2, v2, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->showPlanDetail:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment$2;->this$0:Lwww/littlefoxes/reftime/fragment/RePlanFragment;

    iget-object v2, v2, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->certainAddPlan:Landroid/widget/TextView;

    const v3, 0x7f0f0069

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment$2;->this$0:Lwww/littlefoxes/reftime/fragment/RePlanFragment;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->access$002(Lwww/littlefoxes/reftime/fragment/RePlanFragment;I)I

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment$2;->this$0:Lwww/littlefoxes/reftime/fragment/RePlanFragment;

    invoke-static {v2, p1}, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->access$102(Lwww/littlefoxes/reftime/fragment/RePlanFragment;Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;)Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment$2;->this$0:Lwww/littlefoxes/reftime/fragment/RePlanFragment;

    invoke-static {v2, p1}, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->access$200(Lwww/littlefoxes/reftime/fragment/RePlanFragment;Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;)V

    const-string v2, "MyRePlanViewClick"

    invoke-virtual {p1}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getRecordName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "RePlanClickDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RePlanFragment$2"

    const-string v6, "(Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_49
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment$2;->this$0:Lwww/littlefoxes/reftime/fragment/RePlanFragment;

    invoke-static {v2}, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->access$300(Lwww/littlefoxes/reftime/fragment/RePlanFragment;)V

    goto :goto_3a
.end method
