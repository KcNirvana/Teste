.class final Lcom/miui/networkassistant/dual/SimCardHelper$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/dual/DualSimInfoManager$ISimInfoChangeListener;


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/dual/SimCardHelper;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/dual/SimCardHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/dual/SimCardHelper$1;->this$0:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper$1;->this$0:Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->updateSimState()Z

    return-void
.end method
