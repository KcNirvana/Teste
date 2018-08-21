.class final Lcom/miui/home/launcher/assistant/module/Analysis$3;
.super Ljava/lang/Object;
.source "Analysis.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickItemEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cardId:Ljava/lang/String;

.field final synthetic val$cardName:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$itemLocation:Ljava/lang/String;

.field final synthetic val$itemName:Ljava/lang/String;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/Analysis$3;->val$key:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/module/Analysis$3;->val$cardId:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/home/launcher/assistant/module/Analysis$3;->val$cardName:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/home/launcher/assistant/module/Analysis$3;->val$itemName:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/home/launcher/assistant/module/Analysis$3;->val$itemLocation:Ljava/lang/String;

    iput-object p6, p0, Lcom/miui/home/launcher/assistant/module/Analysis$3;->val$source:Ljava/lang/String;

    iput-object p7, p0, Lcom/miui/home/launcher/assistant/module/Analysis$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x7

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "Cards"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/Analysis$3;->val$key:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/Analysis$3;->val$cardId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/Analysis$3;->val$cardName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/Analysis$3;->val$itemName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/Analysis$3;->val$itemLocation:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/Analysis$3;->val$source:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/Analysis$3;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

    move-result-object v1

    const-string/jumbo v2, "trackOnClickItemEvent"

    invoke-virtual {v1, v0, v2, v3, v3}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->invokeService([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
