.class Lwww/littlefoxes/reftime/fragment/RecordFragment$12;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lwww/littlefoxes/reftime/fragment/RecordFragment;I)V
    .registers 3

    iput-object p1, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$12;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    iput p2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$12;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    nop

    nop

    nop

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_150

    :goto_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onClickDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RecordFragment$12"

    const-string v6, "(Landroid/view/View;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :pswitch_1d
    :try_start_1d
    new-instance v3, Landroid/content/Intent;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$12;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    invoke-static {v2}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->access$600(Lwww/littlefoxes/reftime/fragment/RecordFragment;)Landroid/content/Context;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_24} :catch_14c

    move-result-object v2

    const-class v4, Lwww/littlefoxes/reftime/record/EditRecordActivity;

    :try_start_27
    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v4, LDBManager/Database/RecordMenu;

    invoke-direct {v4}, LDBManager/Database/RecordMenu;-><init>()V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$12;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    iget-object v2, v2, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    iget v5, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$12;->val$position:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v2}, LDBManager/MainActivityData/RecordList;->getRecordName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, LDBManager/Database/RecordMenu;->setRecordName(Ljava/lang/String;)V

    invoke-virtual {v2}, LDBManager/MainActivityData/RecordList;->getRecordUnicode()I

    move-result v5

    invoke-virtual {v4, v5}, LDBManager/Database/RecordMenu;->setRecordUnicode(I)V

    invoke-virtual {v2}, LDBManager/MainActivityData/RecordList;->getRecordSortColorTiming()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, LDBManager/Database/RecordMenu;->setRecordSortColorTiming(Ljava/lang/String;)V

    invoke-virtual {v2}, LDBManager/MainActivityData/RecordList;->getRecordSortColor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, LDBManager/Database/RecordMenu;->setRecordSortColor(Ljava/lang/String;)V

    invoke-virtual {v2}, LDBManager/MainActivityData/RecordList;->getRecordSort()I

    move-result v5

    invoke-virtual {v4, v5}, LDBManager/Database/RecordMenu;->setRecordSort(I)V

    invoke-virtual {v2}, LDBManager/MainActivityData/RecordList;->getRecordSortName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, LDBManager/Database/RecordMenu;->setRecordSortName(Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_65} :catch_14c

    const-string v2, "recordMenu"

    :try_start_67
    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6a} :catch_14c

    const-string v2, "position"

    :try_start_6c
    iget v4, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$12;->val$position:I

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$12;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_77} :catch_14c

    :goto_77
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$12;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    invoke-static {v2}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->access$900(Lwww/littlefoxes/reftime/fragment/RecordFragment;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_e

    :pswitch_81
    :try_start_81
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$12;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    iget-object v2, v2, Lwww/littlefoxes/reftime/fragment/RecordFragment;->recordLists:Ljava/util/List;

    iget v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$12;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDBManager/MainActivityData/RecordList;

    invoke-virtual {v2}, LDBManager/MainActivityData/RecordList;->isStatus()Z

    move-result v2

    if-eqz v2, :cond_af

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$12;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    invoke-static {v2}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->access$600(Lwww/littlefoxes/reftime/fragment/RecordFragment;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f002c

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_a4} :catch_103

    :goto_a4
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$12;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    invoke-static {v2}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->access$900(Lwww/littlefoxes/reftime/fragment/RecordFragment;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_e

    :cond_af
    :try_start_af
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$12;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    iget-boolean v2, v2, Lwww/littlefoxes/reftime/fragment/RecordFragment;->isToday:Z

    const/4 v3, -0x2

    const/4 v4, -0x1

    const v5, 0x7f0f0097

    const v6, 0x7f0f0011

    if-eqz v2, :cond_105

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$12;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    invoke-static {v7}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->access$600(Lwww/littlefoxes/reftime/fragment/RecordFragment;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0f0012

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v7, Lwww/littlefoxes/reftime/fragment/RecordFragment$12$2;

    invoke-direct {v7, p0}, Lwww/littlefoxes/reftime/fragment/RecordFragment$12$2;-><init>(Lwww/littlefoxes/reftime/fragment/RecordFragment$12;)V

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v6, Lwww/littlefoxes/reftime/fragment/RecordFragment$12$1;

    invoke-direct {v6, p0}, Lwww/littlefoxes/reftime/fragment/RecordFragment$12$1;-><init>(Lwww/littlefoxes/reftime/fragment/RecordFragment$12;)V

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_eb} :catch_103

    move-result-object v4

    const-string v5, "#333333"

    :try_start_ee
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_f8} :catch_103

    move-result-object v2

    const-string v3, "#8BC5A1"

    :try_start_fb
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_a4

    :catch_103
    move-exception v2

    goto :goto_a4

    :cond_105
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$12;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    invoke-static {v7}, Lwww/littlefoxes/reftime/fragment/RecordFragment;->access$600(Lwww/littlefoxes/reftime/fragment/RecordFragment;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0f000e

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v7, Lwww/littlefoxes/reftime/fragment/RecordFragment$12$4;

    invoke-direct {v7, p0}, Lwww/littlefoxes/reftime/fragment/RecordFragment$12$4;-><init>(Lwww/littlefoxes/reftime/fragment/RecordFragment$12;)V

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v6, Lwww/littlefoxes/reftime/fragment/RecordFragment$12$3;

    invoke-direct {v6, p0}, Lwww/littlefoxes/reftime/fragment/RecordFragment$12$3;-><init>(Lwww/littlefoxes/reftime/fragment/RecordFragment$12;)V

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_133} :catch_103

    move-result-object v4

    const-string v5, "#333333"

    :try_start_136
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_140} :catch_103

    move-result-object v2

    const-string v3, "#8BC5A1"

    :try_start_143
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_14a} :catch_103

    goto/16 :goto_a4

    :catch_14c
    move-exception v2

    goto/16 :goto_77

    nop

    :pswitch_data_150
    .packed-switch 0x7f09005e
        :pswitch_81
        :pswitch_1d
    .end packed-switch
.end method
