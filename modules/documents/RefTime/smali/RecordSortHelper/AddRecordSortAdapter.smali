.class public LRecordSortHelper/AddRecordSortAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AddRecordSortAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LRecordSortHelper/AddRecordSortAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "LRecordSortHelper/AddRecordSortAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private addRecordSortAdapterClickListener:LRecordSortHelper/AddRecordSortAdapterClickListener;

.field private mContext:Landroid/content/Context;

.field private mRecordSort:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LDBManager/Database/RecordSort;",
            ">;"
        }
    .end annotation
.end field

.field private pickedPosition:I

.field private screenWidth:I


# direct methods
.method public constructor <init>(Ljava/util/List;ILandroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LDBManager/Database/RecordSort;",
            ">;I",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, LRecordSortHelper/AddRecordSortAdapter;->pickedPosition:I

    .line 26
    iput-object p1, p0, LRecordSortHelper/AddRecordSortAdapter;->mRecordSort:Ljava/util/List;

    if-gez p2, :cond_0

    const/4 p2, 0x0

    .line 27
    :cond_0
    iput p2, p0, LRecordSortHelper/AddRecordSortAdapter;->pickedPosition:I

    .line 28
    iput-object p3, p0, LRecordSortHelper/AddRecordSortAdapter;->mContext:Landroid/content/Context;

    .line 29
    iget-object p1, p0, LRecordSortHelper/AddRecordSortAdapter;->mContext:Landroid/content/Context;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 30
    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 31
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 32
    iget p1, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 34
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    div-float/2addr p1, p2

    float-to-int p1, p1

    .line 37
    iput p1, p0, LRecordSortHelper/AddRecordSortAdapter;->screenWidth:I

    return-void
.end method

.method static synthetic access$000(LRecordSortHelper/AddRecordSortAdapter;)LRecordSortHelper/AddRecordSortAdapterClickListener;
    .locals 0

    .line 18
    iget-object p0, p0, LRecordSortHelper/AddRecordSortAdapter;->addRecordSortAdapterClickListener:LRecordSortHelper/AddRecordSortAdapterClickListener;

    return-object p0
.end method

.method static synthetic access$102(LRecordSortHelper/AddRecordSortAdapter;I)I
    .locals 0

    .line 18
    iput p1, p0, LRecordSortHelper/AddRecordSortAdapter;->pickedPosition:I

    return p1
.end method

.method static synthetic access$200(LRecordSortHelper/AddRecordSortAdapter;)Ljava/util/List;
    .locals 0

    .line 18
    iget-object p0, p0, LRecordSortHelper/AddRecordSortAdapter;->mRecordSort:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public RefrashData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LDBManager/Database/RecordSort;",
            ">;)V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, LRecordSortHelper/AddRecordSortAdapter;->mRecordSort:Ljava/util/List;

    .line 43
    invoke-virtual {p0}, LRecordSortHelper/AddRecordSortAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getAddRecordSortAdapterClickListener(LRecordSortHelper/AddRecordSortAdapterClickListener;)V
    .locals 0

    .line 110
    iput-object p1, p0, LRecordSortHelper/AddRecordSortAdapter;->addRecordSortAdapterClickListener:LRecordSortHelper/AddRecordSortAdapterClickListener;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 97
    iget-object v0, p0, LRecordSortHelper/AddRecordSortAdapter;->mRecordSort:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onBindViewHolder(LRecordSortHelper/AddRecordSortAdapter$MyViewHolder;I)V
    .locals 4

    .line 52
    iget-object v0, p0, LRecordSortHelper/AddRecordSortAdapter;->mRecordSort:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 53
    iget-object p2, p1, LRecordSortHelper/AddRecordSortAdapter$MyViewHolder;->sortBtn:Landroid/widget/TextView;

    const v0, 0x7f08005e

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 55
    iget-object p2, p1, LRecordSortHelper/AddRecordSortAdapter$MyViewHolder;->sortBtn:Landroid/widget/TextView;

    const/high16 v0, 0x41e00000    # 28.0f

    iget v1, p0, LRecordSortHelper/AddRecordSortAdapter;->screenWidth:I

    add-int/lit8 v1, v1, -0x28

    int-to-float v1, v1

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setScaleX(F)V

    .line 56
    iget-object p2, p1, LRecordSortHelper/AddRecordSortAdapter$MyViewHolder;->sortBtn:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object p1, p1, LRecordSortHelper/AddRecordSortAdapter$MyViewHolder;->sortBtn:Landroid/widget/TextView;

    new-instance p2, LRecordSortHelper/AddRecordSortAdapter$1;

    invoke-direct {p2, p0}, LRecordSortHelper/AddRecordSortAdapter$1;-><init>(LRecordSortHelper/AddRecordSortAdapter;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 64
    :cond_0
    iget-object v0, p0, LRecordSortHelper/AddRecordSortAdapter;->mRecordSort:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDBManager/Database/RecordSort;

    .line 65
    iget-object v1, p1, LRecordSortHelper/AddRecordSortAdapter$MyViewHolder;->sortBtn:Landroid/widget/TextView;

    invoke-virtual {v0}, LDBManager/Database/RecordSort;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v1, p1, LRecordSortHelper/AddRecordSortAdapter$MyViewHolder;->sortBtn:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setScaleX(F)V

    .line 67
    iget v1, p0, LRecordSortHelper/AddRecordSortAdapter;->pickedPosition:I

    const/16 v2, 0xe10

    if-ne v1, p2, :cond_1

    .line 68
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 71
    iget v3, p0, LRecordSortHelper/AddRecordSortAdapter;->screenWidth:I

    div-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 72
    invoke-virtual {v0}, LDBManager/Database/RecordSort;->getColorTiming()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 73
    iget-object v0, p1, LRecordSortHelper/AddRecordSortAdapter$MyViewHolder;->sortBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 74
    iget-object v0, p1, LRecordSortHelper/AddRecordSortAdapter$MyViewHolder;->sortBtn:Landroid/widget/TextView;

    const-string v1, "#FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 76
    :cond_1
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 77
    iget v3, p0, LRecordSortHelper/AddRecordSortAdapter;->screenWidth:I

    div-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 80
    invoke-virtual {v0}, LDBManager/Database/RecordSort;->getColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 81
    iget-object v0, p1, LRecordSortHelper/AddRecordSortAdapter$MyViewHolder;->sortBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget-object v0, p1, LRecordSortHelper/AddRecordSortAdapter$MyViewHolder;->sortBtn:Landroid/widget/TextView;

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    :goto_0
    iget-object p1, p1, LRecordSortHelper/AddRecordSortAdapter$MyViewHolder;->sortBtn:Landroid/widget/TextView;

    new-instance v0, LRecordSortHelper/AddRecordSortAdapter$2;

    invoke-direct {v0, p0, p2}, LRecordSortHelper/AddRecordSortAdapter$2;-><init>(LRecordSortHelper/AddRecordSortAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 18
    check-cast p1, LRecordSortHelper/AddRecordSortAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, LRecordSortHelper/AddRecordSortAdapter;->onBindViewHolder(LRecordSortHelper/AddRecordSortAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LRecordSortHelper/AddRecordSortAdapter$MyViewHolder;
    .locals 3

    .line 47
    new-instance p2, LRecordSortHelper/AddRecordSortAdapter$MyViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0055

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, LRecordSortHelper/AddRecordSortAdapter$MyViewHolder;-><init>(LRecordSortHelper/AddRecordSortAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, LRecordSortHelper/AddRecordSortAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)LRecordSortHelper/AddRecordSortAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method
