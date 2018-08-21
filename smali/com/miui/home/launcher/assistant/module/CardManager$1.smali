.class final Lcom/miui/home/launcher/assistant/module/CardManager$1;
.super Ljava/lang/Object;
.source "CardManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/module/CardManager;->addCardSource(ILcom/miui/home/launcher/assistant/module/CardSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$pos:I

.field final synthetic val$source:Lcom/miui/home/launcher/assistant/module/CardSource;


# direct methods
.method constructor <init>(ILcom/miui/home/launcher/assistant/module/CardSource;)V
    .locals 0

    iput p1, p0, Lcom/miui/home/launcher/assistant/module/CardManager$1;->val$pos:I

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/module/CardManager$1;->val$source:Lcom/miui/home/launcher/assistant/module/CardSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget v0, p0, Lcom/miui/home/launcher/assistant/module/CardManager$1;->val$pos:I

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/CardManager$1;->val$source:Lcom/miui/home/launcher/assistant/module/CardSource;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/module/CardManager;->access$000(ILcom/miui/home/launcher/assistant/module/CardSource;)V

    return-void
.end method
