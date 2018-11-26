.class final Lcom/miui/networkassistant/utils/TelephonyUtil$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/miui/networkassistant/utils/TelephonyUtil$1;

.field final synthetic val$listener:Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedListener;

.field final synthetic val$phoneNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/utils/TelephonyUtil$1;Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/utils/TelephonyUtil$1$1;->this$1:Lcom/miui/networkassistant/utils/TelephonyUtil$1;

    iput-object p2, p0, Lcom/miui/networkassistant/utils/TelephonyUtil$1$1;->val$listener:Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedListener;

    iput-object p3, p0, Lcom/miui/networkassistant/utils/TelephonyUtil$1$1;->val$phoneNumber:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/utils/TelephonyUtil$1$1;->val$listener:Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedListener;

    iget-object v1, p0, Lcom/miui/networkassistant/utils/TelephonyUtil$1$1;->val$phoneNumber:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedListener;->onPhoneNumberLoaded(Ljava/lang/String;)V

    return-void
.end method
