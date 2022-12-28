.class public LListFluHelper/ListFlu;
.super Ljava/lang/Object;
.source "ListFlu.java"


# instance fields
.field private listDate:Ljava/lang/String;

.field private listRecord:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LDBManager/Database/RecordData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "LDBManager/Database/RecordData;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, LListFluHelper/ListFlu;->listDate:Ljava/lang/String;

    .line 14
    iput-object p2, p0, LListFluHelper/ListFlu;->listRecord:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getListDate()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, LListFluHelper/ListFlu;->listDate:Ljava/lang/String;

    return-object v0
.end method

.method public getListRecord()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LDBManager/Database/RecordData;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, LListFluHelper/ListFlu;->listRecord:Ljava/util/List;

    return-object v0
.end method

.method public setListDate(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, LListFluHelper/ListFlu;->listDate:Ljava/lang/String;

    return-void
.end method

.method public setListRecord(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LDBManager/Database/RecordData;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, LListFluHelper/ListFlu;->listRecord:Ljava/util/List;

    return-void
.end method
