.class public LEmojiHelper/EmojiEntity;
.super Ljava/lang/Object;
.source "EmojiEntity.java"


# instance fields
.field private name:Ljava/lang/String;

.field private unicode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p2, p0, LEmojiHelper/EmojiEntity;->name:Ljava/lang/String;

    .line 9
    iput p1, p0, LEmojiHelper/EmojiEntity;->unicode:I

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, LEmojiHelper/EmojiEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUnicode()I
    .locals 1

    .line 22
    iget v0, p0, LEmojiHelper/EmojiEntity;->unicode:I

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, LEmojiHelper/EmojiEntity;->name:Ljava/lang/String;

    return-void
.end method

.method public setUnicode(I)V
    .locals 0

    .line 26
    iput p1, p0, LEmojiHelper/EmojiEntity;->unicode:I

    return-void
.end method
