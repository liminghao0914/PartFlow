.class LEmojiHelper/EmojiAdapterForAdd$1;
.super Ljava/lang/Object;
.source "EmojiAdapterForAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LEmojiHelper/EmojiAdapterForAdd;->onBindViewHolder(LEmojiHelper/EmojiAdapterForAdd$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LEmojiHelper/EmojiAdapterForAdd;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(LEmojiHelper/EmojiAdapterForAdd;I)V
    .locals 0

    .line 57
    iput-object p1, p0, LEmojiHelper/EmojiAdapterForAdd$1;->this$0:LEmojiHelper/EmojiAdapterForAdd;

    iput p2, p0, LEmojiHelper/EmojiAdapterForAdd$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 64
    iget-object p1, p0, LEmojiHelper/EmojiAdapterForAdd$1;->this$0:LEmojiHelper/EmojiAdapterForAdd;

    iget v0, p0, LEmojiHelper/EmojiAdapterForAdd$1;->val$position:I

    invoke-static {p1, v0}, LEmojiHelper/EmojiAdapterForAdd;->access$002(LEmojiHelper/EmojiAdapterForAdd;I)I

    .line 65
    iget-object p1, p0, LEmojiHelper/EmojiAdapterForAdd$1;->this$0:LEmojiHelper/EmojiAdapterForAdd;

    invoke-virtual {p1}, LEmojiHelper/EmojiAdapterForAdd;->notifyDataSetChanged()V

    .line 66
    iget-object p1, p0, LEmojiHelper/EmojiAdapterForAdd$1;->this$0:LEmojiHelper/EmojiAdapterForAdd;

    invoke-static {p1}, LEmojiHelper/EmojiAdapterForAdd;->access$200(LEmojiHelper/EmojiAdapterForAdd;)LEmojiHelper/EmojiItemClickForAdd;

    move-result-object p1

    iget-object v0, p0, LEmojiHelper/EmojiAdapterForAdd$1;->this$0:LEmojiHelper/EmojiAdapterForAdd;

    invoke-static {v0}, LEmojiHelper/EmojiAdapterForAdd;->access$100(LEmojiHelper/EmojiAdapterForAdd;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, LEmojiHelper/EmojiAdapterForAdd$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LEmojiHelper/EmojiEntity;

    invoke-virtual {v0}, LEmojiHelper/EmojiEntity;->getUnicode()I

    move-result v0

    iget-object v1, p0, LEmojiHelper/EmojiAdapterForAdd$1;->this$0:LEmojiHelper/EmojiAdapterForAdd;

    invoke-static {v1}, LEmojiHelper/EmojiAdapterForAdd;->access$100(LEmojiHelper/EmojiAdapterForAdd;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, LEmojiHelper/EmojiAdapterForAdd$1;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LEmojiHelper/EmojiEntity;

    invoke-virtual {v1}, LEmojiHelper/EmojiEntity;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, LEmojiHelper/EmojiItemClickForAdd;->itemClick(ILjava/lang/String;)V

    return-void
.end method
