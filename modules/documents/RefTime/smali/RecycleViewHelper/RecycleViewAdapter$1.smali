.class LRecycleViewHelper/RecycleViewAdapter$1;
.super Ljava/lang/Object;
.source "RecycleViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LRecycleViewHelper/RecycleViewAdapter;->onBindViewHolder(LRecycleViewHelper/RecycleViewAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LRecycleViewHelper/RecycleViewAdapter;


# direct methods
.method constructor <init>(LRecycleViewHelper/RecycleViewAdapter;)V
    .locals 0

    .line 245
    iput-object p1, p0, LRecycleViewHelper/RecycleViewAdapter$1;->this$0:LRecycleViewHelper/RecycleViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 248
    iget-object p1, p0, LRecycleViewHelper/RecycleViewAdapter$1;->this$0:LRecycleViewHelper/RecycleViewAdapter;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    float-to-int p2, p2

    invoke-static {p1, p2}, LRecycleViewHelper/RecycleViewAdapter;->access$002(LRecycleViewHelper/RecycleViewAdapter;I)I

    const/4 p1, 0x0

    return p1
.end method
