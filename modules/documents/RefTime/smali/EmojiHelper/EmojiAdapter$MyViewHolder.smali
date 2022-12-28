.class LEmojiHelper/EmojiAdapter$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "EmojiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LEmojiHelper/EmojiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:LEmojiHelper/EmojiAdapter;

.field tvBG:Landroid/widget/TextView;

.field tvEmoji:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(LEmojiHelper/EmojiAdapter;Landroid/view/View;)V
    .locals 0

    .line 76
    iput-object p1, p0, LEmojiHelper/EmojiAdapter$MyViewHolder;->this$0:LEmojiHelper/EmojiAdapter;

    .line 77
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090160

    .line 78
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, LEmojiHelper/EmojiAdapter$MyViewHolder;->tvEmoji:Landroid/widget/TextView;

    const p1, 0x7f09015f

    .line 79
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, LEmojiHelper/EmojiAdapter$MyViewHolder;->tvBG:Landroid/widget/TextView;

    return-void
.end method
