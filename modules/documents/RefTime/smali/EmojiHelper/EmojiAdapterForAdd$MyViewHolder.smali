.class LEmojiHelper/EmojiAdapterForAdd$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "EmojiAdapterForAdd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LEmojiHelper/EmojiAdapterForAdd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyViewHolder"
.end annotation


# instance fields
.field frameLayout:Landroid/widget/FrameLayout;

.field final synthetic this$0:LEmojiHelper/EmojiAdapterForAdd;

.field tvEmoji:Landroid/widget/TextView;

.field tvLinear:Landroid/widget/TextView;

.field tvName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(LEmojiHelper/EmojiAdapterForAdd;Landroid/view/View;)V
    .locals 0

    .line 82
    iput-object p1, p0, LEmojiHelper/EmojiAdapterForAdd$MyViewHolder;->this$0:LEmojiHelper/EmojiAdapterForAdd;

    .line 83
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090160

    .line 84
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, LEmojiHelper/EmojiAdapterForAdd$MyViewHolder;->tvEmoji:Landroid/widget/TextView;

    const p1, 0x7f090162

    .line 85
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, LEmojiHelper/EmojiAdapterForAdd$MyViewHolder;->tvName:Landroid/widget/TextView;

    const p1, 0x7f090161

    .line 86
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, LEmojiHelper/EmojiAdapterForAdd$MyViewHolder;->tvLinear:Landroid/widget/TextView;

    const p1, 0x7f0900f0

    .line 87
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, LEmojiHelper/EmojiAdapterForAdd$MyViewHolder;->frameLayout:Landroid/widget/FrameLayout;

    return-void
.end method
