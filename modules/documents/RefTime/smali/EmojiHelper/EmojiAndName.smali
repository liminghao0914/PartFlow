.class public LEmojiHelper/EmojiAndName;
.super Ljava/lang/Object;
.source "EmojiAndName.java"


# instance fields
.field private name:Ljava/lang/String;

.field private startTime:Ljava/lang/String;

.field private unicode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, LEmojiHelper/EmojiAndName;->name:Ljava/lang/String;

    .line 10
    iput p2, p0, LEmojiHelper/EmojiAndName;->unicode:I

    .line 11
    iput-object p3, p0, LEmojiHelper/EmojiAndName;->startTime:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, LEmojiHelper/EmojiAndName;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, LEmojiHelper/EmojiAndName;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getUnicode()I
    .locals 1

    .line 22
    iget v0, p0, LEmojiHelper/EmojiAndName;->unicode:I

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, LEmojiHelper/EmojiAndName;->name:Ljava/lang/String;

    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, LEmojiHelper/EmojiAndName;->startTime:Ljava/lang/String;

    return-void
.end method

.method public setUnicode(I)V
    .locals 0

    .line 26
    iput p1, p0, LEmojiHelper/EmojiAndName;->unicode:I

    return-void
.end method
