.class Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;I)V
    .registers 3

    iput-object p1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$1;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;

    iput p2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$1;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$1;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;

    invoke-static {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;->access$100(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$1;->val$i:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/Database/RePlanData;

    iget-object v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$1;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;

    invoke-static {v3}, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;->access$000(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LDBManager/Database/RePlanData;->setSortName(Ljava/lang/String;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$1;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;

    invoke-static {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;->access$200(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;)Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$itemClickEvent;

    move-result-object v3

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$1;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;

    invoke-static {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;->access$100(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;)Ljava/util/List;

    move-result-object v2

    iget v4, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$1;->val$i:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/Database/RePlanData;

    invoke-interface {v3, v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$itemClickEvent;->itemClick(LDBManager/Database/RePlanData;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$1;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;

    invoke-static {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;->access$300(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$1;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;

    invoke-static {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;->access$100(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$1;->val$i:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/Database/RePlanData;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, LDBManager/Database/RePlanData;->setSelect(Z)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$1;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter;->notifyDataSetChanged()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onClickDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.AddRePlanRecordListAdapter$1"

    const-string v6, "(Landroid/view/View;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
