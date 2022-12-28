.class Lwww/littlefoxes/reftime/sort/EditSortActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lwww/littlefoxes/reftime/sort/EditSortActivity;


# direct methods
.method constructor <init>(Lwww/littlefoxes/reftime/sort/EditSortActivity;)V
    .registers 2

    iput-object p1, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity$1;->this$0:Lwww/littlefoxes/reftime/sort/EditSortActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 9

    .prologue
    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity$1;->this$0:Lwww/littlefoxes/reftime/sort/EditSortActivity;

    invoke-static {v2}, Lwww/littlefoxes/reftime/sort/EditSortActivity;->access$000(Lwww/littlefoxes/reftime/sort/EditSortActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_46

    iget-object v2, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity$1;->this$0:Lwww/littlefoxes/reftime/sort/EditSortActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lwww/littlefoxes/reftime/sort/EditSortActivity;->access$102(Lwww/littlefoxes/reftime/sort/EditSortActivity;Z)Z

    iget-object v2, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity$1;->this$0:Lwww/littlefoxes/reftime/sort/EditSortActivity;

    invoke-static {v2}, Lwww/littlefoxes/reftime/sort/EditSortActivity;->access$200(Lwww/littlefoxes/reftime/sort/EditSortActivity;)Landroid/widget/TextView;

    move-result-object v2

    const-string v4, "#8BC5A1"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity$1;->this$0:Lwww/littlefoxes/reftime/sort/EditSortActivity;

    invoke-static {v2}, Lwww/littlefoxes/reftime/sort/EditSortActivity;->access$200(Lwww/littlefoxes/reftime/sort/EditSortActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setClickable(Z)V

    :goto_37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "afterTextChangedDelta"

    const-string v5, "www.littlefoxes.reftime.sort.EditSortActivity$1"

    const-string v6, "(Landroid/text/Editable;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_46
    iget-object v2, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity$1;->this$0:Lwww/littlefoxes/reftime/sort/EditSortActivity;

    invoke-static {v2, v3}, Lwww/littlefoxes/reftime/sort/EditSortActivity;->access$102(Lwww/littlefoxes/reftime/sort/EditSortActivity;Z)Z

    iget-object v2, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity$1;->this$0:Lwww/littlefoxes/reftime/sort/EditSortActivity;

    invoke-static {v2}, Lwww/littlefoxes/reftime/sort/EditSortActivity;->access$200(Lwww/littlefoxes/reftime/sort/EditSortActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity$1;->this$0:Lwww/littlefoxes/reftime/sort/EditSortActivity;

    invoke-static {v2}, Lwww/littlefoxes/reftime/sort/EditSortActivity;->access$200(Lwww/littlefoxes/reftime/sort/EditSortActivity;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "#CCEDD2"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_37
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 12

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "beforeTextChangedDelta"

    const-string v5, "www.littlefoxes.reftime.sort.EditSortActivity$1"

    const-string v6, "(Ljava/lang/CharSequence;III)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 12

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onTextChangedDelta"

    const-string v5, "www.littlefoxes.reftime.sort.EditSortActivity$1"

    const-string v6, "(Ljava/lang/CharSequence;III)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
