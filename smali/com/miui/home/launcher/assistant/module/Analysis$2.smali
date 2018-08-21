.class final Lcom/miui/home/launcher/assistant/module/Analysis$2;
.super Ljava/lang/Object;
.source "Analysis.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/module/Analysis;->trackScreenCards(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cardKey:Ljava/lang/String;

.field final synthetic val$cardsItemContent:Ljava/lang/String;

.field final synthetic val$cardsItemQuantity:I

.field final synthetic val$cardsItemSequence:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isCardShrink:Z

.field final synthetic val$location:I

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/Analysis$2;->val$cardKey:Ljava/lang/String;

    iput p2, p0, Lcom/miui/home/launcher/assistant/module/Analysis$2;->val$location:I

    iput p3, p0, Lcom/miui/home/launcher/assistant/module/Analysis$2;->val$cardsItemQuantity:I

    iput-object p4, p0, Lcom/miui/home/launcher/assistant/module/Analysis$2;->val$pkg:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/home/launcher/assistant/module/Analysis$2;->val$cardsItemSequence:Ljava/lang/String;

    iput-object p6, p0, Lcom/miui/home/launcher/assistant/module/Analysis$2;->val$cardsItemContent:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/miui/home/launcher/assistant/module/Analysis$2;->val$isCardShrink:Z

    iput-object p8, p0, Lcom/miui/home/launcher/assistant/module/Analysis$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    const/16 v1, 0x8

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "Cards"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "card_view_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/module/Analysis$2;->val$cardKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/miui/home/launcher/assistant/module/Analysis$2;->val$location:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/miui/home/launcher/assistant/module/Analysis$2;->val$cardsItemQuantity:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x4

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/Analysis$2;->val$pkg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, ""

    :goto_0
    aput-object v1, v0, v2

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/Analysis$2;->val$cardsItemSequence:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/Analysis$2;->val$cardsItemContent:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/miui/home/launcher/assistant/module/Analysis$2;->val$isCardShrink:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/Analysis$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

    move-result-object v1

    const-string/jumbo v2, "track_screen_cards_event"

    invoke-virtual {v1, v0, v2, v4, v4}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->invokeService([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/Analysis$2;->val$pkg:Ljava/lang/String;

    goto :goto_0
.end method
