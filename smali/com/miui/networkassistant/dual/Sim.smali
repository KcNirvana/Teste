.class public Lcom/miui/networkassistant/dual/Sim;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ICCID:Ljava/lang/String; = "iccId"

.field public static final MAX_SLOT_COUNT:I

.field public static final SIM_ID:Ljava/lang/String; = "simId"

.field public static final SIM_NAME:Ljava/lang/String; = "simName"

.field public static final SIM_SLOT_NUM_TAG:Ljava/lang/String; = "sim_slot_num_tag"

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SLOT1:I = 0x0

.field public static final SLOT2:I = 0x1

.field public static final SLOT_NOT_INSERTED:I = -0x1

.field public static final SLOT_NUM:Ljava/lang/String; = "slotNum"

.field public static final SYS_SLOT_NUM_INTENT_KEY:Ljava/lang/String; = "slot_id"

.field private static sCurrentOptSlotNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string/jumbo v0, "miui.telephony.TelephonyManager"

    invoke-static {v0}, Lcom/miui/a/c/d;->btN(Ljava/lang/String;)Lcom/miui/a/c/d;

    move-result-object v0

    const-string/jumbo v1, "getDefault"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v4, v2}, Lcom/miui/a/c/d;->btO(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/miui/a/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/a/c/d;->btS()Lcom/miui/a/c/d;

    move-result-object v0

    const-string/jumbo v1, "getPhoneCount"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v4, v2}, Lcom/miui/a/c/d;->btQ(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/miui/a/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/a/c/d;->btV()I

    move-result v0

    sput v0, Lcom/miui/networkassistant/dual/Sim;->MAX_SLOT_COUNT:I

    sput v3, Lcom/miui/networkassistant/dual/Sim;->sCurrentOptSlotNum:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentActiveSlotNum()I
    .locals 1

    invoke-static {}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getCurrentMobileSlotNum()I

    move-result v0

    return v0
.end method

.method public static getCurrentOptSlotNum()I
    .locals 1

    sget v0, Lcom/miui/networkassistant/dual/Sim;->sCurrentOptSlotNum:I

    return v0
.end method

.method public static operateOnSlot1()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/networkassistant/dual/Sim;->operateOnSlotNum(I)V

    return-void
.end method

.method public static operateOnSlot2()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/networkassistant/dual/Sim;->operateOnSlotNum(I)V

    return-void
.end method

.method public static operateOnSlotNum(I)V
    .locals 0

    sput p0, Lcom/miui/networkassistant/dual/Sim;->sCurrentOptSlotNum:I

    return-void
.end method
