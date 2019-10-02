.class Lcom/xiaomi/phonenum/phone/PhoneInServiceHelper$PhoneStateListenerRfle;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneInServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/phonenum/phone/PhoneInServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneStateListenerRfle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/phonenum/phone/PhoneInServiceHelper;


# direct methods
.method public constructor <init>(Lcom/xiaomi/phonenum/phone/PhoneInServiceHelper;I)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/phonenum/phone/PhoneInServiceHelper$PhoneStateListenerRfle;->this$0:Lcom/xiaomi/phonenum/phone/PhoneInServiceHelper;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    const-string p1, "mSubId"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/xiaomi/phonenum/phone/PhoneInServiceHelper$ReflectUtil;->setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
