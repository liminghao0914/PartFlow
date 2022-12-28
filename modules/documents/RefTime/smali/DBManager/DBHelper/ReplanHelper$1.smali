.class final LDBManager/DBHelper/ReplanHelper$1;
.super Ljava/lang/Object;
.source "ReplanHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LDBManager/DBHelper/ReplanHelper;->GetRecordListFromRePlan(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "LDBManager/MainActivityData/RecordList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(LDBManager/MainActivityData/RecordList;LDBManager/MainActivityData/RecordList;)I
    .locals 0

    .line 245
    invoke-virtual {p1}, LDBManager/MainActivityData/RecordList;->getStartTime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, LDBManager/MainActivityData/RecordList;->getStartTime()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 242
    check-cast p1, LDBManager/MainActivityData/RecordList;

    check-cast p2, LDBManager/MainActivityData/RecordList;

    invoke-virtual {p0, p1, p2}, LDBManager/DBHelper/ReplanHelper$1;->compare(LDBManager/MainActivityData/RecordList;LDBManager/MainActivityData/RecordList;)I

    move-result p1

    return p1
.end method
