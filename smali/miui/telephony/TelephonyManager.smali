.class public abstract Lmiui/telephony/TelephonyManager;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# static fields
.field public static final SIM_STATE_READY:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Lmiui/telephony/TelephonyManager;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public abstract getLine1NumberForSlot(I)Ljava/lang/String;
.end method

.method public abstract getMiuiDeviceId()Ljava/lang/String;
.end method

.method public abstract getSimOperator()Ljava/lang/String;
.end method

.method public abstract getSimState()I
.end method

.method public abstract getSimStateForSlot(I)I
.end method
