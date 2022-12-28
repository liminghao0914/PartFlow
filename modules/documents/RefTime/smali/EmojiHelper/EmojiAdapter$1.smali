.class LEmojiHelper/EmojiAdapter$1;
.super Ljava/lang/Object;
.source "EmojiAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LEmojiHelper/EmojiAdapter;->onBindViewHolder(LEmojiHelper/EmojiAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LEmojiHelper/EmojiAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(LEmojiHelper/EmojiAdapter;I)V
    .locals 0

    .line 57
    iput-object p1, p0, LEmojiHelper/EmojiAdapter$1;->this$0:LEmojiHelper/EmojiAdapter;

    iput p2, p0, LEmojiHelper/EmojiAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 60
    iget-object p1, p0, LEmojiHelper/EmojiAdapter$1;->this$0:LEmojiHelper/EmojiAdapter;

    iget v0, p0, LEmojiHelper/EmojiAdapter$1;->val$position:I

    invoke-static {p1, v0}, LEmojiHelper/EmojiAdapter;->access$002(LEmojiHelper/EmojiAdapter;I)I

    .line 61
    iget-object p1, p0, LEmojiHelper/EmojiAdapter$1;->this$0:LEmojiHelper/EmojiAdapter;

    invoke-static {p1}, LEmojiHelper/EmojiAdapter;->access$200(LEmojiHelper/EmojiAdapter;)LEmojiHelper/EmojiItemClick;

    move-result-object p1

    iget v0, p0, LEmojiHelper/EmojiAdapter$1;->val$position:I

    iget-object v1, p0, LEmojiHelper/EmojiAdapter$1;->this$0:LEmojiHelper/EmojiAdapter;

    invoke-static {v1}, LEmojiHelper/EmojiAdapter;->access$100(LEmojiHelper/EmojiAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, LEmojiHelper/EmojiAdapter$1;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LEmojiHelper/EmojiEntity;

    invoke-virtual {v1}, LEmojiHelper/EmojiEntity;->getUnicode()I

    move-result v1

    invoke-interface {p1, v0, v1}, LEmojiHelper/EmojiItemClick;->itemClick(II)V

    .line 62
    iget-object p1, p0, LEmojiHelper/EmojiAdapter$1;->this$0:LEmojiHelper/EmojiAdapter;

    invoke-virtual {p1}, LEmojiHelper/EmojiAdapter;->notifyDataSetChanged()V

    return-void
.end method
