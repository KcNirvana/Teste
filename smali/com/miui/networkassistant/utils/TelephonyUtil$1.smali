.class final Lcom/miui/networkassistant/utils/TelephonyUtil$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedListener;

.field final synthetic val$slotNum:I


# direct methods
.method constructor <init>(Landroid/content/Context;ILcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedListener;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/utils/TelephonyUtil$1;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/miui/networkassistant/utils/TelephonyUtil$1;->val$slotNum:I

    iput-object p3, p0, Lcom/miui/networkassistant/utils/TelephonyUtil$1;->val$listener:Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedListener;

    iput-object p4, p0, Lcom/miui/networkassistant/utils/TelephonyUtil$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/utils/TelephonyUtil$1;->val$context:Landroid/content/Context;

    iget v1, p0, Lcom/miui/networkassistant/utils/TelephonyUtil$1;->val$slotNum:I

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getPhoneNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/utils/TelephonyUtil$1;->val$listener:Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/utils/TelephonyUtil$1;->val$handler:Landroid/os/Handler;

    new-instance v2, Lcom/miui/networkassistant/utils/TelephonyUtil$1$1;

    iget-object v3, p0, Lcom/miui/networkassistant/utils/TelephonyUtil$1;->val$listener:Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedListener;

    invoke-direct {v2, p0, v3, v0}, Lcom/miui/networkassistant/utils/TelephonyUtil$1$1;-><init>(Lcom/miui/networkassistant/utils/TelephonyUtil$1;Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedListener;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
