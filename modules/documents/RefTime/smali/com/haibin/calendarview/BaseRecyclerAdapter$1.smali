.class Lcom/haibin/calendarview/BaseRecyclerAdapter$1;
.super Lcom/haibin/calendarview/BaseRecyclerAdapter$OnClickListener;
.source "BaseRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haibin/calendarview/BaseRecyclerAdapter;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haibin/calendarview/BaseRecyclerAdapter;


# direct methods
.method constructor <init>(Lcom/haibin/calendarview/BaseRecyclerAdapter;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/haibin/calendarview/BaseRecyclerAdapter$1;->this$0:Lcom/haibin/calendarview/BaseRecyclerAdapter;

    invoke-direct {p0}, Lcom/haibin/calendarview/BaseRecyclerAdapter$OnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(IJ)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/haibin/calendarview/BaseRecyclerAdapter$1;->this$0:Lcom/haibin/calendarview/BaseRecyclerAdapter;

    invoke-static {v0}, Lcom/haibin/calendarview/BaseRecyclerAdapter;->access$000(Lcom/haibin/calendarview/BaseRecyclerAdapter;)Lcom/haibin/calendarview/BaseRecyclerAdapter$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/haibin/calendarview/BaseRecyclerAdapter$1;->this$0:Lcom/haibin/calendarview/BaseRecyclerAdapter;

    invoke-static {v0}, Lcom/haibin/calendarview/BaseRecyclerAdapter;->access$000(Lcom/haibin/calendarview/BaseRecyclerAdapter;)Lcom/haibin/calendarview/BaseRecyclerAdapter$OnItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/haibin/calendarview/BaseRecyclerAdapter$OnItemClickListener;->onItemClick(IJ)V

    :cond_0
    return-void
.end method
