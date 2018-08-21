.class Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$1;
.super Ljava/lang/Object;
.source "TransmissionProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->invokeService([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

.field final synthetic val$args:[Ljava/lang/String;

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$s1:[Ljava/lang/String;

.field final synthetic val$s2:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$1;->this$0:Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$1;->val$args:[Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$1;->val$method:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$1;->val$s1:[Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$1;->val$s2:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$1;->this$0:Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$1;->val$args:[Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$1;->val$method:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$1;->val$s1:[Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider$1;->val$s2:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;->access$000(Lcom/miui/home/launcher/assistant/provider/TransmissionProvider;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
