.class public LEmojiHelper/EmojiAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "EmojiAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LEmojiHelper/EmojiAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "LEmojiHelper/EmojiAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private animationSet:Landroid/view/animation/AnimationSet;

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private emojiEntityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LEmojiHelper/EmojiEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mContex:Landroid/content/Context;

.field private prePosition:I

.field private rvItemClick:LEmojiHelper/EmojiItemClick;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LEmojiHelper/EmojiEntity;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 23
    iput v0, p0, LEmojiHelper/EmojiAdapter;->prePosition:I

    .line 29
    iput-object p1, p0, LEmojiHelper/EmojiAdapter;->emojiEntityList:Ljava/util/List;

    .line 30
    iput-object p2, p0, LEmojiHelper/EmojiAdapter;->mContex:Landroid/content/Context;

    .line 31
    iget-object p1, p0, LEmojiHelper/EmojiAdapter;->mContex:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080077

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, LEmojiHelper/EmojiAdapter;->drawable:Landroid/graphics/drawable/Drawable;

    .line 32
    new-instance p1, Landroid/view/animation/AnimationSet;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object p1, p0, LEmojiHelper/EmojiAdapter;->animationSet:Landroid/view/animation/AnimationSet;

    .line 33
    new-instance p1, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3f8ccccd    # 1.1f

    const v3, 0x3e99999a    # 0.3f

    const v4, 0x3f8ccccd    # 1.1f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v0, 0xc8

    .line 37
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 39
    iget-object p2, p0, LEmojiHelper/EmojiAdapter;->animationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p2, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 40
    iget-object p1, p0, LEmojiHelper/EmojiAdapter;->animationSet:Landroid/view/animation/AnimationSet;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    return-void
.end method

.method static synthetic access$002(LEmojiHelper/EmojiAdapter;I)I
    .locals 0

    .line 20
    iput p1, p0, LEmojiHelper/EmojiAdapter;->prePosition:I

    return p1
.end method

.method static synthetic access$100(LEmojiHelper/EmojiAdapter;)Ljava/util/List;
    .locals 0

    .line 20
    iget-object p0, p0, LEmojiHelper/EmojiAdapter;->emojiEntityList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(LEmojiHelper/EmojiAdapter;)LEmojiHelper/EmojiItemClick;
    .locals 0

    .line 20
    iget-object p0, p0, LEmojiHelper/EmojiAdapter;->rvItemClick:LEmojiHelper/EmojiItemClick;

    return-object p0
.end method


# virtual methods
.method public EmojiItemClick(LEmojiHelper/EmojiItemClick;)V
    .locals 0

    .line 83
    iput-object p1, p0, LEmojiHelper/EmojiAdapter;->rvItemClick:LEmojiHelper/EmojiItemClick;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 69
    iget-object v0, p0, LEmojiHelper/EmojiAdapter;->emojiEntityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(LEmojiHelper/EmojiAdapter$MyViewHolder;I)V
    .locals 3

    .line 50
    iget-object v0, p1, LEmojiHelper/EmojiAdapter$MyViewHolder;->tvEmoji:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, LEmojiHelper/EmojiAdapter;->emojiEntityList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LEmojiHelper/EmojiEntity;

    invoke-virtual {v2}, LEmojiHelper/EmojiEntity;->getUnicode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget v0, p0, LEmojiHelper/EmojiAdapter;->prePosition:I

    if-eq p2, v0, :cond_0

    .line 52
    iget-object v0, p1, LEmojiHelper/EmojiAdapter$MyViewHolder;->tvBG:Landroid/widget/TextView;

    const-string v1, "#00000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p1, LEmojiHelper/EmojiAdapter$MyViewHolder;->tvBG:Landroid/widget/TextView;

    iget-object v1, p0, LEmojiHelper/EmojiAdapter;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 55
    iget-object v0, p1, LEmojiHelper/EmojiAdapter$MyViewHolder;->tvBG:Landroid/widget/TextView;

    iget-object v1, p0, LEmojiHelper/EmojiAdapter;->animationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 57
    :goto_0
    iget-object p1, p1, LEmojiHelper/EmojiAdapter$MyViewHolder;->tvEmoji:Landroid/widget/TextView;

    new-instance v0, LEmojiHelper/EmojiAdapter$1;

    invoke-direct {v0, p0, p2}, LEmojiHelper/EmojiAdapter$1;-><init>(LEmojiHelper/EmojiAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 20
    check-cast p1, LEmojiHelper/EmojiAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, LEmojiHelper/EmojiAdapter;->onBindViewHolder(LEmojiHelper/EmojiAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LEmojiHelper/EmojiAdapter$MyViewHolder;
    .locals 3

    .line 45
    new-instance p2, LEmojiHelper/EmojiAdapter$MyViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c003f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, LEmojiHelper/EmojiAdapter$MyViewHolder;-><init>(LEmojiHelper/EmojiAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, LEmojiHelper/EmojiAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)LEmojiHelper/EmojiAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method
