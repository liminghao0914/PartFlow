.class LRecordSortHelper/AddRecordSortAdapter$1;
.super Ljava/lang/Object;
.source "AddRecordSortAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LRecordSortHelper/AddRecordSortAdapter;->onBindViewHolder(LRecordSortHelper/AddRecordSortAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LRecordSortHelper/AddRecordSortAdapter;


# direct methods
.method constructor <init>(LRecordSortHelper/AddRecordSortAdapter;)V
    .locals 0

    .line 57
    iput-object p1, p0, LRecordSortHelper/AddRecordSortAdapter$1;->this$0:LRecordSortHelper/AddRecordSortAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 60
    iget-object p1, p0, LRecordSortHelper/AddRecordSortAdapter$1;->this$0:LRecordSortHelper/AddRecordSortAdapter;

    invoke-static {p1}, LRecordSortHelper/AddRecordSortAdapter;->access$000(LRecordSortHelper/AddRecordSortAdapter;)LRecordSortHelper/AddRecordSortAdapterClickListener;

    move-result-object p1

    invoke-interface {p1}, LRecordSortHelper/AddRecordSortAdapterClickListener;->addSort()V

    return-void
.end method
