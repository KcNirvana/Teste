.class public Lcom/miui/home/launcher/assistant/util/Now;
.super Ljava/lang/Object;
.source "Now.java"

# interfaces
.implements Lcom/miui/home/launcher/assistant/util/NowOrLater;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/miui/home/launcher/assistant/util/NowOrLater",
        "<TC;>;"
    }
.end annotation


# instance fields
.field private final mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/util/Now;->mValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getLater(Lcom/miui/home/launcher/assistant/util/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/assistant/util/Consumer",
            "<-TC;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/util/Now;->getNow()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/miui/home/launcher/assistant/util/Consumer;->consume(Ljava/lang/Object;)Z

    return-void
.end method

.method public getNow()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/util/Now;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public haveNow()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
