.class final LDBManager/DBHelper/DataHelper$1;
.super Ljava/lang/Object;
.source "DataHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LDBManager/DBHelper/DataHelper;->getAllRecordListForRePlan(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "LDBManager/Database/RecordData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(LDBManager/Database/RecordData;LDBManager/Database/RecordData;)I
    .locals 0

    .line 49
    invoke-virtual {p1}, LDBManager/Database/RecordData;->getRecordId()I

    move-result p1

    invoke-virtual {p2}, LDBManager/Database/RecordData;->getRecordId()I

    move-result p2

    if-ge p1, p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 46
    check-cast p1, LDBManager/Database/RecordData;

    check-cast p2, LDBManager/Database/RecordData;

    invoke-virtual {p0, p1, p2}, LDBManager/DBHelper/DataHelper$1;->compare(LDBManager/Database/RecordData;LDBManager/Database/RecordData;)I

    move-result p1

    return p1
.end method
