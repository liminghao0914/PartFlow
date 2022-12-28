.class final LDBManager/DBHelper/DataHelper$3;
.super Ljava/lang/Object;
.source "DataHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LDBManager/DBHelper/DataHelper;->GetAllRecordDataById(I)Ljava/util/List;
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

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(LDBManager/Database/RecordData;LDBManager/Database/RecordData;)I
    .locals 0

    .line 303
    invoke-virtual {p1}, LDBManager/Database/RecordData;->getRecordDate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, LDBManager/Database/RecordData;->getRecordDate()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 300
    check-cast p1, LDBManager/Database/RecordData;

    check-cast p2, LDBManager/Database/RecordData;

    invoke-virtual {p0, p1, p2}, LDBManager/DBHelper/DataHelper$3;->compare(LDBManager/Database/RecordData;LDBManager/Database/RecordData;)I

    move-result p1

    return p1
.end method
