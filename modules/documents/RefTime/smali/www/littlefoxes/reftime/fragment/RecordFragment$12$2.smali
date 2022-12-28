.class Lwww/littlefoxes/reftime/fragment/RecordFragment$12$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lwww/littlefoxes/reftime/fragment/RecordFragment$12;


# direct methods
.method constructor <init>(Lwww/littlefoxes/reftime/fragment/RecordFragment$12;)V
    .registers 2

    iput-object p1, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$12$2;->this$1:Lwww/littlefoxes/reftime/fragment/RecordFragment$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10

    .prologue
    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$12$2;->this$1:Lwww/littlefoxes/reftime/fragment/RecordFragment$12;

    iget-object v2, v2, Lwww/littlefoxes/reftime/fragment/RecordFragment$12;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    iget-object v2, v2, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$12$2;->this$1:Lwww/littlefoxes/reftime/fragment/RecordFragment$12;

    iget v3, v3, Lwww/littlefoxes/reftime/fragment/RecordFragment$12;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v2, v4}, LDBManager/MainActivityData/RecordList;->setEditable(Z)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$12$2;->this$1:Lwww/littlefoxes/reftime/fragment/RecordFragment$12;

    iget-object v2, v2, Lwww/littlefoxes/reftime/fragment/RecordFragment$12;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    iget-object v2, v2, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$12$2;->this$1:Lwww/littlefoxes/reftime/fragment/RecordFragment$12;

    iget v3, v3, Lwww/littlefoxes/reftime/fragment/RecordFragment$12;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v2}, LDBManager/MainActivityData/RecordList;->getRecordId()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3}, LDateHelper/DateHelper;->getFullDate(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LDBManager/DBHelper/MenuHelper;->DeleteRecordMenu(ILjava/lang/String;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$12$2;->this$1:Lwww/littlefoxes/reftime/fragment/RecordFragment$12;

    iget-object v2, v2, Lwww/littlefoxes/reftime/fragment/RecordFragment$12;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    iget-object v2, v2, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$12$2;->this$1:Lwww/littlefoxes/reftime/fragment/RecordFragment$12;

    iget v3, v3, Lwww/littlefoxes/reftime/fragment/RecordFragment$12;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$12$2;->this$1:Lwww/littlefoxes/reftime/fragment/RecordFragment$12;

    iget-object v2, v2, Lwww/littlefoxes/reftime/fragment/RecordFragment$12;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    iget-object v2, v2, Lwww/littlefoxes/reftime/fragment/RecordFragment;->adapter:LRecycleViewHelper/RecycleViewAdapter;

    invoke-virtual {v2}, LRecycleViewHelper/RecycleViewAdapter;->notifyDataSetChanged()V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$12$2;->this$1:Lwww/littlefoxes/reftime/fragment/RecordFragment$12;

    iget-object v2, v2, Lwww/littlefoxes/reftime/fragment/RecordFragment$12;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    invoke-static {v2}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->access$600(Lwww/littlefoxes/reftime/fragment/RecordFragment;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f0014

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onClickDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RecordFragment$12$2"

    const-string v6, "(Landroid/content/DialogInterface;I)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
