.class public Lcom/miui/personalassistant/model/SettingCardManager;
.super Ljava/lang/Object;
.source "SettingCardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/model/SettingCardManager$CARD_SOURCE_ID;
    }
.end annotation


# static fields
.field public static CARD_LIST:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/model/SettingItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final PACKAGE_AGENDA:Ljava/lang/String; = "com.android.calendar"

.field public static final PACKAGE_DATA_USAGE:Ljava/lang/String; = "com.miui.securitycenter"

.field public static final PACKAGE_DIDI_TRIP:Ljava/lang/String; = "com.didi.trip"

.field public static final PACKAGE_EXPRESS:Ljava/lang/String; = "com.miui.yellowpage"

.field public static final PACKAGE_SPORT:Ljava/lang/String; = "com.xiaomi.hm.health"

.field private static final TAG:Ljava/lang/String; = "SettingCardManager"

.field public static final sIsKK:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/miui/personalassistant/model/SettingCardManager;->sIsKK:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/personalassistant/model/SettingCardManager;->CARD_LIST:Ljava/util/ArrayList;

    sget-object v0, Lcom/miui/personalassistant/model/SettingCardManager$CARD_SOURCE_ID;->FUNCTION:Lcom/miui/personalassistant/model/SettingCardManager$CARD_SOURCE_ID;

    invoke-virtual {v0}, Lcom/miui/personalassistant/model/SettingCardManager$CARD_SOURCE_ID;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x1b0b0286

    const v3, 0x1b0b0248

    const v4, 0x1b0b0248

    const-string/jumbo v5, "key_shortcut"

    const/4 v6, 0x0

    const v7, 0x1b0201e9

    const/4 v8, 0x0

    const v9, 0x1b0201e9

    invoke-static/range {v0 .. v9}, Lcom/miui/personalassistant/model/SettingCardManager;->addSettingItem(ILjava/lang/String;IIILjava/lang/String;ZIII)V

    sget-object v0, Lcom/miui/personalassistant/model/SettingCardManager$CARD_SOURCE_ID;->NOTEBOARD:Lcom/miui/personalassistant/model/SettingCardManager$CARD_SOURCE_ID;

    invoke-virtual {v0}, Lcom/miui/personalassistant/model/SettingCardManager$CARD_SOURCE_ID;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x1b0b03b0

    const v3, 0x1b0b03b1

    const v4, 0x1b0b03b1

    const-string/jumbo v5, "key_noteboard"

    const/4 v6, 0x0

    const v7, 0x1b020207

    const v8, 0x1b0201c0

    const v9, 0x1b0201ec

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/miui/personalassistant/model/SettingCardManager;->addSettingItem(ILjava/lang/String;IIILjava/lang/String;ZIIIZ)V

    sget-object v0, Lcom/miui/personalassistant/model/SettingCardManager$CARD_SOURCE_ID;->SPORT:Lcom/miui/personalassistant/model/SettingCardManager$CARD_SOURCE_ID;

    invoke-virtual {v0}, Lcom/miui/personalassistant/model/SettingCardManager$CARD_SOURCE_ID;->ordinal()I

    move-result v0

    const-string/jumbo v1, "com.xiaomi.hm.health"

    const v2, 0x1b0b028a

    const v3, 0x1b0b0103

    const v4, 0x1b0b0103

    const-string/jumbo v5, "key_step"

    const/4 v6, 0x1

    const v7, 0x1b020205    # 1.0754E-22f

    const v8, 0x1b0201c3

    const v9, 0x1b0201eb

    invoke-static/range {v0 .. v9}, Lcom/miui/personalassistant/model/SettingCardManager;->addSettingItem(ILjava/lang/String;IIILjava/lang/String;ZIII)V

    sget-object v0, Lcom/miui/personalassistant/model/SettingCardManager$CARD_SOURCE_ID;->AGENDA:Lcom/miui/personalassistant/model/SettingCardManager$CARD_SOURCE_ID;

    invoke-virtual {v0}, Lcom/miui/personalassistant/model/SettingCardManager$CARD_SOURCE_ID;->ordinal()I

    move-result v0

    const-string/jumbo v1, "com.android.calendar"

    const v2, 0x1b0b0282

    const v3, 0x1b0b0019

    const v4, 0x1b0b001a

    const-string/jumbo v5, "key_agenda_assistant"

    const/4 v6, 0x0

    const v7, 0x1b0201fc

    const v8, 0x1b0201ba

    const v9, 0x1b0201e3

    invoke-static/range {v0 .. v9}, Lcom/miui/personalassistant/model/SettingCardManager;->addSettingItem(ILjava/lang/String;IIILjava/lang/String;ZIII)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addSettingItem(ILjava/lang/String;IIILjava/lang/String;ZIII)V
    .locals 11

    const/4 v10, 0x1

    move v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v10}, Lcom/miui/personalassistant/model/SettingCardManager;->addSettingItem(ILjava/lang/String;IIILjava/lang/String;ZIIIZ)V

    return-void
.end method

.method private static addSettingItem(ILjava/lang/String;IIILjava/lang/String;ZIIIZ)V
    .locals 12

    new-instance v0, Lcom/miui/personalassistant/model/SettingItem;

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/miui/personalassistant/model/SettingItem;-><init>(ILjava/lang/String;IIILjava/lang/String;ZIIIZ)V

    sget-object v1, Lcom/miui/personalassistant/model/SettingCardManager;->CARD_LIST:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getSettingItemById(I)Lcom/miui/personalassistant/model/SettingItem;
    .locals 3

    sget-object v1, Lcom/miui/personalassistant/model/SettingCardManager;->CARD_LIST:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/model/SettingItem;

    invoke-virtual {v0}, Lcom/miui/personalassistant/model/SettingItem;->getId()I

    move-result v2

    if-ne p0, v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSettingItemByKey(Ljava/lang/String;)Lcom/miui/personalassistant/model/SettingItem;
    .locals 3

    sget-object v1, Lcom/miui/personalassistant/model/SettingCardManager;->CARD_LIST:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/model/SettingItem;

    invoke-virtual {v0}, Lcom/miui/personalassistant/model/SettingItem;->getPrefKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
