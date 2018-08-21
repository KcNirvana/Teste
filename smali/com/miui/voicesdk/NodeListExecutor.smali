.class public Lcom/miui/voicesdk/NodeListExecutor;
.super Ljava/lang/Object;
.source "NodeListExecutor.java"

# interfaces
.implements Lcom/miui/voicesdk/AccessilibilityServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/voicesdk/NodeListExecutor$KeyNode;
    }
.end annotation


# static fields
.field private static final MSG_ID_ACTION:I = 0x3e8

.field private static final MSG_ID_NOFOUND:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "NodeListExecutor"


# instance fields
.field private mBackNavDes:Ljava/lang/String;

.field private mCallback:Lcom/miui/voicesdk/ActionCallback;

.field private mContext:Landroid/content/Context;

.field private mExecuteHandler:Landroid/os/Handler;

.field private mIndex:I

.field private mIsInstRunning:Z

.field private mIsScrollable:Z

.field private mKeyClickCount:I

.field private mLastPerformClickActionTime:J

.field private mNodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/voicesdk/ActionNode;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnInstRunListener:Lcom/miui/voicesdk/util/InstrumentationRunner$OnInstRunListener;

.field private mPackageName:Ljava/lang/String;

.field private mRootNodeInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private mSimulateScrollDuration:I

.field private mStop:Z

.field private final mkeyListener:Lcom/miui/voicesdk/util/InstrumentationRunner$OnInstRunListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/voicesdk/NodeListExecutor$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/voicesdk/NodeListExecutor$1;-><init>(Lcom/miui/voicesdk/NodeListExecutor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/voicesdk/NodeListExecutor;->mExecuteHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/voicesdk/NodeListExecutor$3;

    invoke-direct {v0, p0}, Lcom/miui/voicesdk/NodeListExecutor$3;-><init>(Lcom/miui/voicesdk/NodeListExecutor;)V

    iput-object v0, p0, Lcom/miui/voicesdk/NodeListExecutor;->mOnInstRunListener:Lcom/miui/voicesdk/util/InstrumentationRunner$OnInstRunListener;

    new-instance v0, Lcom/miui/voicesdk/NodeListExecutor$4;

    invoke-direct {v0, p0}, Lcom/miui/voicesdk/NodeListExecutor$4;-><init>(Lcom/miui/voicesdk/NodeListExecutor;)V

    iput-object v0, p0, Lcom/miui/voicesdk/NodeListExecutor;->mkeyListener:Lcom/miui/voicesdk/util/InstrumentationRunner$OnInstRunListener;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/voicesdk/NodeListExecutor;->mLastPerformClickActionTime:J

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voicesdk/NodeListExecutor;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/voicesdk/NodeListExecutor;->mNodeList:Ljava/util/List;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/voicesdk/NodeListExecutor;->initialize(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/voicesdk/NodeListExecutor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/voicesdk/util/DeviceConfig;->init(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/voicesdk/NodeListExecutor;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "accessibility_back"

    const-string/jumbo v2, "com.android.systemui"

    const-string/jumbo v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/miui/voicesdk/util/Utils;->getVitualNavigationString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/voicesdk/NodeListExecutor;->mBackNavDes:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/voicesdk/NodeListExecutor;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/voicesdk/NodeListExecutor;->mNodeList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/voicesdk/NodeListExecutor;)I
    .locals 1

    iget v0, p0, Lcom/miui/voicesdk/NodeListExecutor;->mIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/miui/voicesdk/NodeListExecutor;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/voicesdk/NodeListExecutor;->finish(IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/voicesdk/NodeListExecutor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/voicesdk/NodeListExecutor;->doCurrentNode(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/voicesdk/NodeListExecutor;)Lcom/miui/voicesdk/ActionCallback;
    .locals 1

    iget-object v0, p0, Lcom/miui/voicesdk/NodeListExecutor;->mCallback:Lcom/miui/voicesdk/ActionCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/voicesdk/NodeListExecutor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/voicesdk/NodeListExecutor;->mIsInstRunning:Z

    return v0
.end method

.method static synthetic access$502(Lcom/miui/voicesdk/NodeListExecutor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/voicesdk/NodeListExecutor;->mIsInstRunning:Z

    return p1
.end method

.method static synthetic access$600(Lcom/miui/voicesdk/NodeListExecutor;)I
    .locals 1

    iget v0, p0, Lcom/miui/voicesdk/NodeListExecutor;->mSimulateScrollDuration:I

    return v0
.end method

.method static synthetic access$602(Lcom/miui/voicesdk/NodeListExecutor;I)I
    .locals 0

    iput p1, p0, Lcom/miui/voicesdk/NodeListExecutor;->mSimulateScrollDuration:I

    return p1
.end method

.method static synthetic access$700(Lcom/miui/voicesdk/NodeListExecutor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/voicesdk/NodeListExecutor;->doCurrentNodeDelay(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/voicesdk/NodeListExecutor;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/voicesdk/NodeListExecutor;->doCurrentActionContinue(IZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/voicesdk/NodeListExecutor;)I
    .locals 1

    iget v0, p0, Lcom/miui/voicesdk/NodeListExecutor;->mKeyClickCount:I

    return v0
.end method

.method static synthetic access$910(Lcom/miui/voicesdk/NodeListExecutor;)I
    .locals 2

    iget v0, p0, Lcom/miui/voicesdk/NodeListExecutor;->mKeyClickCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/miui/voicesdk/NodeListExecutor;->mKeyClickCount:I

    return v0
.end method

.method private clickKeybord(Lcom/miui/voicesdk/ActionNode;)V
    .locals 23

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/voicesdk/ActionNode;->getWords()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/miui/voicesdk/ActionNode;->getExtra()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v19

    const-string/jumbo v20, "NodeListExecutor"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "clickKeybord extra"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_3

    invoke-virtual {v12, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string/jumbo v19, "str"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string/jumbo v19, "nb"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    const-string/jumbo v19, "y"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v19, "x"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    const-string/jumbo v19, "y"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v18

    new-instance v13, Lcom/miui/voicesdk/NodeListExecutor$KeyNode;

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v13, v0, v1, v15}, Lcom/miui/voicesdk/NodeListExecutor$KeyNode;-><init>(IILjava/lang/String;)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v19

    const-string/jumbo v20, "NodeListExecutor"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "clickKeybord "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/miui/voicesdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/voicesdk/NodeListExecutor;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/miui/voicesdk/util/Utils;->hasFsgNavBar(Landroid/content/Context;)Z

    move-result v19

    if-nez v19, :cond_4

    const/4 v4, 0x0

    :cond_4
    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v19

    const-string/jumbo v20, "NodeListExecutor"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "addy:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/voicesdk/NodeListExecutor;->mKeyClickCount:I

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v19

    const-string/jumbo v20, "NodeListExecutor"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "clickKeybord words"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    :goto_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_2

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_5

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/miui/voicesdk/NodeListExecutor$KeyNode;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/miui/voicesdk/NodeListExecutor$KeyNode;->str:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/miui/voicesdk/NodeListExecutor$KeyNode;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/miui/voicesdk/NodeListExecutor$KeyNode;->x:I

    move/from16 v19, v0

    invoke-static {}, Lcom/miui/voicesdk/util/DeviceConfig;->getScreenWidth()I

    move-result v20

    mul-int v19, v19, v20

    div-int/lit8 v17, v19, 0x64

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/miui/voicesdk/NodeListExecutor$KeyNode;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/miui/voicesdk/NodeListExecutor$KeyNode;->y:I

    move/from16 v19, v0

    add-int v19, v19, v4

    invoke-static {}, Lcom/miui/voicesdk/util/DeviceConfig;->getScreenHeight()I

    move-result v20

    mul-int v19, v19, v20

    div-int/lit8 v18, v19, 0x64

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v20

    const-string/jumbo v21, "NodeListExecutor"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "clickKeybord key:"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/miui/voicesdk/NodeListExecutor$KeyNode;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/miui/voicesdk/NodeListExecutor$KeyNode;->str:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v22, "("

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/miui/voicesdk/NodeListExecutor$KeyNode;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/miui/voicesdk/NodeListExecutor$KeyNode;->x:I

    move/from16 v19, v0

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v22, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/miui/voicesdk/NodeListExecutor$KeyNode;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/miui/voicesdk/NodeListExecutor$KeyNode;->y:I

    move/from16 v19, v0

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v22, " )"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Landroid/graphics/Point;

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v14, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v19, Lcom/miui/voicesdk/util/InstrumentationRunner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/voicesdk/NodeListExecutor;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/voicesdk/NodeListExecutor;->mkeyListener:Lcom/miui/voicesdk/util/InstrumentationRunner$OnInstRunListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/miui/voicesdk/util/InstrumentationRunner;-><init>(Landroid/content/Context;ILandroid/graphics/Point;Lcom/miui/voicesdk/util/InstrumentationRunner$OnInstRunListener;)V

    mul-int/lit16 v0, v7, 0x96

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/miui/voicesdk/util/InstrumentationRunner;->dispatchEventToThreadDelay(Lcom/miui/voicesdk/util/InstrumentationRunner;I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3
.end method

.method private clickNode(Landroid/view/accessibility/AccessibilityNodeInfo;Lcom/miui/voicesdk/ActionNode;)Z
    .locals 10

    if-nez p2, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    const-string/jumbo v5, "click"

    iget-object v6, p2, Lcom/miui/voicesdk/ActionNode;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "scrollclick"

    iget-object v6, p2, Lcom/miui/voicesdk/ActionNode;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_2
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    :goto_1
    iget-object v5, p2, Lcom/miui/voicesdk/ActionNode;->path:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p2, Lcom/miui/voicesdk/ActionNode;->id:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/miui/voicesdk/NodeListExecutor;->mRootNodeInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v5

    const-string/jumbo v6, "NodeListExecutor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " nodeInfo "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    move-object v2, v3

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/miui/voicesdk/NodeListExecutor;->mLastPerformClickActionTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x2bc

    cmp-long v5, v6, v8

    if-gez v5, :cond_4

    const-wide/16 v6, 0xc8

    invoke-static {v6, v7}, Lcom/miui/voicesdk/util/Utils;->sleepQuietly(J)V

    :cond_4
    const/16 v5, 0x10

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/miui/voicesdk/NodeListExecutor;->mLastPerformClickActionTime:J

    :cond_5
    :goto_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto :goto_2

    :cond_7
    const-string/jumbo v5, "longclick"

    iget-object v6, p2, Lcom/miui/voicesdk/ActionNode;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v5, 0x20

    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v1

    goto :goto_2

    :cond_8
    const-string/jumbo v5, "settext"

    iget-object v6, p2, Lcom/miui/voicesdk/ActionNode;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEditable()Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

    iget-object v6, p2, Lcom/miui/voicesdk/ActionNode;->words:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/high16 v5, 0x200000

    invoke-virtual {p1, v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    move-result v1

    goto :goto_2

    :cond_9
    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v5

    const-string/jumbo v6, "NodeListExecutor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "scroll -> scrollPath: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p2, Lcom/miui/voicesdk/ActionNode;->scrollPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " isScrollable:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/miui/voicesdk/NodeListExecutor;->mIsScrollable:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p2, Lcom/miui/voicesdk/ActionNode;->scrollPath:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    iget-boolean v5, p0, Lcom/miui/voicesdk/NodeListExecutor;->mIsScrollable:Z

    if-eqz v5, :cond_a

    iget-object v5, p2, Lcom/miui/voicesdk/ActionNode;->scrollPath:Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/voicesdk/NodeListExecutor;->mRootNodeInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v5, v6}, Lcom/miui/voicesdk/NodeListExecutor;->findNodeByPath(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v5

    const-string/jumbo v6, "NodeListExecutor"

    const-string/jumbo v7, "scroll -> scrollNode: "

    invoke-virtual {v5, v6, v7, v4}, Lcom/miui/voicesdk/util/LogUtils;->ani(Ljava/lang/String;Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget-object v5, Lcom/miui/voicesdk/util/ViewTypeParser$ViewType;->SCROLL:Lcom/miui/voicesdk/util/ViewTypeParser$ViewType;

    invoke-static {v4}, Lcom/miui/voicesdk/util/ViewTypeParser;->parse(Landroid/view/accessibility/AccessibilityNodeInfo;)Lcom/miui/voicesdk/util/ViewTypeParser$ViewType;

    move-result-object v6

    if-ne v5, v6, :cond_0

    const/16 v5, 0x1000

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/miui/voicesdk/NodeListExecutor;->mIsScrollable:Z

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v5

    const-string/jumbo v6, "NodeListExecutor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "scroll -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/miui/voicesdk/NodeListExecutor;->mIsScrollable:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v5, "scrollclick"

    iget-object v6, p2, Lcom/miui/voicesdk/ActionNode;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v5

    const-string/jumbo v6, "NodeListExecutor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " mSimulateScrollDuration: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/miui/voicesdk/NodeListExecutor;->mSimulateScrollDuration:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, p0, Lcom/miui/voicesdk/NodeListExecutor;->mSimulateScrollDuration:I

    invoke-static {}, Lcom/miui/voicesdk/util/DeviceConfig;->getScreenHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x4

    if-ge v5, v6, :cond_0

    new-instance v5, Lcom/miui/voicesdk/util/InstrumentationRunner;

    iget-object v6, p0, Lcom/miui/voicesdk/NodeListExecutor;->mContext:Landroid/content/Context;

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/miui/voicesdk/NodeListExecutor;->mOnInstRunListener:Lcom/miui/voicesdk/util/InstrumentationRunner$OnInstRunListener;

    invoke-direct {v5, v6, v7, v8}, Lcom/miui/voicesdk/util/InstrumentationRunner;-><init>(Landroid/content/Context;ILcom/miui/voicesdk/util/InstrumentationRunner$OnInstRunListener;)V

    invoke-static {v5}, Lcom/miui/voicesdk/util/InstrumentationRunner;->dispatchEventToThread(Lcom/miui/voicesdk/util/InstrumentationRunner;)V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/miui/voicesdk/NodeListExecutor;->mIsInstRunning:Z

    goto/16 :goto_0
.end method

.method private computeExecuteNodeDelayTime(I)J
    .locals 12

    const-wide/16 v10, -0x1

    const/high16 v9, 0x41200000    # 10.0f

    const/high16 v8, 0x40000000    # 2.0f

    iget-object v7, p0, Lcom/miui/voicesdk/NodeListExecutor;->mNodeList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt p1, v7, :cond_1

    move-wide v4, v10

    :cond_0
    :goto_0
    return-wide v4

    :cond_1
    iget-object v7, p0, Lcom/miui/voicesdk/NodeListExecutor;->mNodeList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/voicesdk/ActionNode;

    invoke-virtual {v7}, Lcom/miui/voicesdk/ActionNode;->getExtra()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/miui/voicesdk/util/Utils;->getDelayTimeFromExtra(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v7, v4, v10

    if-nez v7, :cond_0

    :try_start_0
    iget-object v7, p0, Lcom/miui/voicesdk/NodeListExecutor;->mNodeList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/voicesdk/ActionNode;

    invoke-virtual {v7}, Lcom/miui/voicesdk/ActionNode;->getExtra()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/miui/voicesdk/util/Utils;->isScreencapXY(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/miui/voicesdk/NodeListExecutor;->mNodeList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/voicesdk/ActionNode;

    invoke-virtual {v7}, Lcom/miui/voicesdk/ActionNode;->getWaitTime()J

    move-result-wide v4

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/miui/voicesdk/NodeListExecutor;->mNodeList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/voicesdk/ActionNode;

    invoke-virtual {v7}, Lcom/miui/voicesdk/ActionNode;->getExtra()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/miui/voicesdk/util/Utils;->isScreencapCatcher(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_3

    const-wide/16 v4, 0x3e8

    goto :goto_0

    :catch_0
    move-exception v7

    :cond_3
    invoke-static {}, Lcom/miui/voicesdk/VoiceAccessibilityService;->getVoiceServiceInstance()Lcom/miui/voicesdk/VoiceAccessibilityService;

    move-result-object v7

    if-nez v7, :cond_4

    const-wide/16 v4, 0xc8

    goto :goto_0

    :cond_4
    const-string/jumbo v7, "com.tencent.mm"

    iget-object v10, p0, Lcom/miui/voicesdk/NodeListExecutor;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v0, v8

    :goto_1
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/miui/voicesdk/util/Utils;->getPhysicalMemoryByG()I

    move-result v7

    const/4 v10, 0x4

    if-lt v7, v10, :cond_6

    invoke-static {}, Lcom/miui/voicesdk/util/Utils;->getCpuMaxFreq()F

    move-result v7

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_6

    const/high16 v1, 0x3fc00000    # 1.5f

    :goto_2
    const-wide/16 v2, 0xa

    mul-float v7, v9, v0

    mul-float/2addr v7, v1

    float-to-long v4, v7

    const-wide/16 v8, 0xfa

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_0

    :cond_5
    move v0, v9

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/miui/voicesdk/util/Utils;->getPhysicalMemoryByG()I

    move-result v7

    const/4 v8, 0x3

    if-lt v7, v8, :cond_7

    invoke-static {}, Lcom/miui/voicesdk/util/Utils;->getCpuMaxFreq()F

    move-result v7

    const/high16 v8, 0x3fc00000    # 1.5f

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_7

    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_2

    :cond_7
    const/high16 v1, 0x40400000    # 3.0f

    goto :goto_2
.end method

.method private doCurrentActionContinue(IZ)V
    .locals 6

    iget-object v2, p0, Lcom/miui/voicesdk/NodeListExecutor;->mCallback:Lcom/miui/voicesdk/ActionCallback;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/miui/voicesdk/NodeListExecutor;->mStop:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/voicesdk/NodeListExecutor;->mNodeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_3

    iget-object v2, p0, Lcom/miui/voicesdk/NodeListExecutor;->mNodeList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/voicesdk/ActionNode;

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/miui/voicesdk/NodeListExecutor;->removeErrorMsg()V

    new-instance v1, Lcom/miui/voicesdk/ActionStatus;

    sget v2, Lcom/miui/voicesdk/ActionStatus;->STATUS_ITEM_FINISH:I

    invoke-direct {v1, p1, v2}, Lcom/miui/voicesdk/ActionStatus;-><init>(II)V

    invoke-virtual {v1, v0}, Lcom/miui/voicesdk/ActionStatus;->setActionNode(Lcom/miui/voicesdk/ActionNode;)V

    iget-object v2, p0, Lcom/miui/voicesdk/NodeListExecutor;->mCallback:Lcom/miui/voicesdk/ActionCallback;

    invoke-interface {v2, v1}, Lcom/miui/voicesdk/ActionCallback;->onActionCallback(Lcom/miui/voicesdk/ActionStatus;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/miui/voicesdk/NodeListExecutor;->lock()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/miui/voicesdk/NodeListExecutor;->mIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/miui/voicesdk/NodeListExecutor;->mIndex:I

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v2

    const-string/jumbo v3, "NodeListExecutor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " doAction suc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/voicesdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget v2, p0, Lcom/miui/voicesdk/NodeListExecutor;->mIndex:I

    invoke-direct {p0, v2}, Lcom/miui/voicesdk/NodeListExecutor;->doCurrentNodeDelay(I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v2

    const-string/jumbo v3, "NodeListExecutor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " findControl null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/voicesdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/voicesdk/ActionNode;->getWaitTime()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lcom/miui/voicesdk/NodeListExecutor;->sendError(IJ)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v2

    const-string/jumbo v3, "NodeListExecutor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "doCurrentActionContinue failed index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/miui/voicesdk/NodeListExecutor;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mNodeList.size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/voicesdk/NodeListExecutor;->mNodeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/voicesdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/miui/voicesdk/NodeListExecutor;->mIndex:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/miui/voicesdk/NodeListExecutor;->finish(IZ)V

    goto/16 :goto_0
.end method

.method private doCurrentNode(I)V
    .locals 25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/voicesdk/NodeListExecutor;->mIsInstRunning:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/voicesdk/NodeListExecutor;->mStop:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v20

    const-string/jumbo v21, "NodeListExecutor"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "doCurrentActionS mIsInstRunning "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/voicesdk/NodeListExecutor;->mIsInstRunning:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v20

    const-string/jumbo v21, "NodeListExecutor"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, " doCurrentNode "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    const/4 v4, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/voicesdk/NodeListExecutor;->mNodeList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Lcom/miui/voicesdk/ActionNode;

    move-object v4, v0

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v20

    const-string/jumbo v21, "NodeListExecutor"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, " doCurrentNode "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/miui/voicesdk/ActionStatus;

    sget v20, Lcom/miui/voicesdk/ActionStatus;->STATUS_ITEM_BEFORE_FIND:I

    move/from16 v0, p1

    move/from16 v1, v20

    invoke-direct {v6, v0, v1}, Lcom/miui/voicesdk/ActionStatus;-><init>(II)V

    invoke-virtual {v6, v4}, Lcom/miui/voicesdk/ActionStatus;->setActionNode(Lcom/miui/voicesdk/ActionNode;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/voicesdk/NodeListExecutor;->mCallback:Lcom/miui/voicesdk/ActionCallback;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/voicesdk/NodeListExecutor;->mCallback:Lcom/miui/voicesdk/ActionCallback;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Lcom/miui/voicesdk/ActionCallback;->onActionCallback(Lcom/miui/voicesdk/ActionStatus;)Z

    move-result v20

    if-eqz v20, :cond_3

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/miui/voicesdk/NodeListExecutor;->lock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v20

    const-string/jumbo v21, "NodeListExecutor"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, " doCurrentActionE "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/voicesdk/NodeListExecutor;->mIsInstRunning:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/miui/voicesdk/NodeListExecutor;->doCurrentActionContinue(IZ)V

    goto/16 :goto_0

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/miui/voicesdk/VoiceAccessibilityService;->getLastRootWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/voicesdk/NodeListExecutor;->mRootNodeInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/voicesdk/NodeListExecutor;->mRootNodeInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v20, v0

    if-nez v20, :cond_4

    const-string/jumbo v20, "openintent"

    iget-object v0, v4, Lcom/miui/voicesdk/ActionNode;->action:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    const/4 v5, 0x0

    :cond_4
    if-eqz v5, :cond_6

    const-string/jumbo v20, "openintent"

    iget-object v0, v4, Lcom/miui/voicesdk/ActionNode;->action:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/voicesdk/NodeListExecutor;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    iget-object v0, v4, Lcom/miui/voicesdk/ActionNode;->opentIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    iget-object v0, v4, Lcom/miui/voicesdk/ActionNode;->type:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual {v4}, Lcom/miui/voicesdk/ActionNode;->getExtra()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v20 .. v23}, Lcom/miui/voicesdk/util/Utils;->openIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    :cond_5
    :goto_1
    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v20

    const-string/jumbo v21, "NodeListExecutor"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, " doCurrentActionE "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/voicesdk/NodeListExecutor;->mIsInstRunning:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/miui/voicesdk/NodeListExecutor;->doCurrentActionContinue(IZ)V

    goto/16 :goto_0

    :cond_6
    if-eqz v5, :cond_7

    :try_start_2
    const-string/jumbo v20, "back"

    iget-object v0, v4, Lcom/miui/voicesdk/ActionNode;->action:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    const/4 v5, 0x0

    invoke-static {}, Lcom/miui/voicesdk/VoiceAccessibilityService;->getVoiceServiceInstance()Lcom/miui/voicesdk/VoiceAccessibilityService;

    move-result-object v20

    if-eqz v20, :cond_5

    invoke-static {}, Lcom/miui/voicesdk/VoiceAccessibilityService;->getVoiceServiceInstance()Lcom/miui/voicesdk/VoiceAccessibilityService;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/miui/voicesdk/VoiceAccessibilityService;->performGlobalAction(I)Z

    move-result v5

    goto :goto_1

    :cond_7
    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/voicesdk/NodeListExecutor;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/voicesdk/NodeListExecutor;->mRootNodeInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v4, v1}, Lcom/miui/voicesdk/util/Utils;->isTargetActivity(Landroid/content/Context;Lcom/miui/voicesdk/ActionNode;Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v20

    if-nez v20, :cond_8

    const/4 v5, 0x0

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v20

    const-string/jumbo v21, "NodeListExecutor"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, " doCurrentActionE "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/voicesdk/NodeListExecutor;->mIsInstRunning:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/miui/voicesdk/NodeListExecutor;->doCurrentActionContinue(IZ)V

    goto/16 :goto_0

    :cond_8
    :try_start_3
    iget v0, v4, Lcom/miui/voicesdk/ActionNode;->x:I

    move/from16 v20, v0

    if-lez v20, :cond_9

    iget v0, v4, Lcom/miui/voicesdk/ActionNode;->x:I

    move/from16 v20, v0

    const/16 v21, 0x64

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    iget v0, v4, Lcom/miui/voicesdk/ActionNode;->y:I

    move/from16 v20, v0

    if-lez v20, :cond_9

    iget v0, v4, Lcom/miui/voicesdk/ActionNode;->y:I

    move/from16 v20, v0

    const/16 v21, 0x64

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/voicesdk/NodeListExecutor;->mNodeList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/miui/voicesdk/ActionNode;

    invoke-virtual/range {v20 .. v20}, Lcom/miui/voicesdk/ActionNode;->getExtra()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/miui/voicesdk/util/Utils;->isScreencapCatcher(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_9

    iget v0, v4, Lcom/miui/voicesdk/ActionNode;->x:I

    move/from16 v20, v0

    invoke-static {}, Lcom/miui/voicesdk/util/DeviceConfig;->getRealDisplayWidth()I

    move-result v21

    mul-int v20, v20, v21

    div-int/lit8 v18, v20, 0x64

    iget v0, v4, Lcom/miui/voicesdk/ActionNode;->y:I

    move/from16 v20, v0

    invoke-static {}, Lcom/miui/voicesdk/util/DeviceConfig;->getRealDisplayHeight()I

    move-result v21

    mul-int v20, v20, v21

    div-int/lit8 v19, v20, 0x64

    new-instance v15, Landroid/graphics/Point;

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v15, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v20, Lcom/miui/voicesdk/util/InstrumentationRunner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/voicesdk/NodeListExecutor;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/voicesdk/NodeListExecutor;->mOnInstRunListener:Lcom/miui/voicesdk/util/InstrumentationRunner$OnInstRunListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v15, v3}, Lcom/miui/voicesdk/util/InstrumentationRunner;-><init>(Landroid/content/Context;ILandroid/graphics/Point;Lcom/miui/voicesdk/util/InstrumentationRunner$OnInstRunListener;)V

    invoke-static/range {v20 .. v20}, Lcom/miui/voicesdk/util/InstrumentationRunner;->dispatchEventToThread(Lcom/miui/voicesdk/util/InstrumentationRunner;)V

    const/4 v5, 0x0

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/voicesdk/NodeListExecutor;->mIsInstRunning:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v7

    :try_start_4
    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v20

    const-string/jumbo v21, "NodeListExecutor"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "doAction Exception "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/miui/voicesdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v5, 0x0

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v20

    const-string/jumbo v21, "NodeListExecutor"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, " doCurrentActionE "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/voicesdk/NodeListExecutor;->mIsInstRunning:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/miui/voicesdk/NodeListExecutor;->doCurrentActionContinue(IZ)V

    goto/16 :goto_0

    :cond_9
    :try_start_5
    const-string/jumbo v20, "enter"

    iget-object v0, v4, Lcom/miui/voicesdk/ActionNode;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    new-instance v20, Lcom/miui/voicesdk/util/InstrumentationRunner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/voicesdk/NodeListExecutor;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/voicesdk/NodeListExecutor;->mOnInstRunListener:Lcom/miui/voicesdk/util/InstrumentationRunner$OnInstRunListener;

    move-object/from16 v23, v0

    invoke-direct/range {v20 .. v23}, Lcom/miui/voicesdk/util/InstrumentationRunner;-><init>(Landroid/content/Context;ILcom/miui/voicesdk/util/InstrumentationRunner$OnInstRunListener;)V

    invoke-static/range {v20 .. v20}, Lcom/miui/voicesdk/util/InstrumentationRunner;->dispatchEventToThread(Lcom/miui/voicesdk/util/InstrumentationRunner;)V

    const/4 v5, 0x0

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/voicesdk/NodeListExecutor;->mIsInstRunning:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v20

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v21

    const-string/jumbo v22, "NodeListExecutor"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, " doCurrentActionE "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/voicesdk/NodeListExecutor;->mIsInstRunning:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/miui/voicesdk/NodeListExecutor;->doCurrentActionContinue(IZ)V

    throw v20

    :cond_a
    :try_start_6
    const-string/jumbo v20, "keybord"

    iget-object v0, v4, Lcom/miui/voicesdk/ActionNode;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    const/4 v5, 0x0

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/voicesdk/NodeListExecutor;->mIsInstRunning:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/miui/voicesdk/NodeListExecutor;->clickKeybord(Lcom/miui/voicesdk/ActionNode;)V

    goto/16 :goto_1

    :cond_b
    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v0, v4, Lcom/miui/voicesdk/ActionNode;->id:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_13

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v20

    const-string/jumbo v21, "NodeListExecutor"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, " actionNode.id "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v4, Lcom/miui/voicesdk/ActionNode;->id:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v4, Lcom/miui/voicesdk/ActionNode;->id:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string/jumbo v21, "|"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/voicesdk/NodeListExecutor;->mRootNodeInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v20, v0

    iget-object v0, v4, Lcom/miui/voicesdk/ActionNode;->id:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_c

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v20

    if-nez v20, :cond_d

    :cond_c
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/voicesdk/NodeListExecutor;->mRootNodeInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v20, v0

    iget-object v0, v4, Lcom/miui/voicesdk/ActionNode;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    sget-object v22, Lcom/miui/voicesdk/util/Utils$FindBy;->ID:Lcom/miui/voicesdk/util/Utils$FindBy;

    iget-object v0, v4, Lcom/miui/voicesdk/ActionNode;->id:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-static {v13, v0, v1, v2, v3}, Lcom/miui/voicesdk/util/Utils;->findNodeByTextOrId(Ljava/util/List;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Lcom/miui/voicesdk/util/Utils$FindBy;Ljava/lang/String;)Z

    :cond_d
    :goto_2
    if-nez v14, :cond_e

    if-eqz v13, :cond_e

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_e

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/accessibility/AccessibilityNodeInfo;

    :cond_e
    if-eqz v14, :cond_1f

    iget-object v0, v4, Lcom/miui/voicesdk/ActionNode;->path:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1f

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14}, Lcom/miui/voicesdk/NodeListExecutor;->doNodePath(Lcom/miui/voicesdk/ActionNode;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v5

    goto/16 :goto_1

    :cond_f
    iget-object v0, v4, Lcom/miui/voicesdk/ActionNode;->id:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string/jumbo v21, "\\|"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v0, v11

    move/from16 v21, v0

    const/16 v20, 0x0

    :goto_3
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_d

    aget-object v10, v11, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/voicesdk/NodeListExecutor;->mRootNodeInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_10

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v22

    if-nez v22, :cond_11

    :cond_10
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/voicesdk/NodeListExecutor;->mRootNodeInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v22, v0

    iget-object v0, v4, Lcom/miui/voicesdk/ActionNode;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    sget-object v24, Lcom/miui/voicesdk/util/Utils$FindBy;->ID:Lcom/miui/voicesdk/util/Utils$FindBy;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v13, v0, v1, v2, v10}, Lcom/miui/voicesdk/util/Utils;->findNodeByTextOrId(Ljava/util/List;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Lcom/miui/voicesdk/util/Utils$FindBy;Ljava/lang/String;)Z

    :cond_11
    if-eqz v13, :cond_12

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v22

    if-gtz v22, :cond_d

    :cond_12
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    :cond_13
    iget-object v0, v4, Lcom/miui/voicesdk/ActionNode;->nodeDesc:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_15

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/voicesdk/NodeListExecutor;->mRootNodeInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v20, v0

    iget-object v0, v4, Lcom/miui/voicesdk/ActionNode;->nodeDesc:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string/jumbo v22, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v13, v0, v1, v2}, Lcom/miui/voicesdk/util/Utils;->findByNodeDesc(Ljava/util/List;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_d

    iget-object v8, v4, Lcom/miui/voicesdk/ActionNode;->extra:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_14

    invoke-static {v8}, Lcom/miui/voicesdk/util/Utils;->isJsonStr(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_14

    const-string/jumbo v20, "classname"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/voicesdk/NodeListExecutor;->mRootNodeInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v4, v1}, Lcom/miui/voicesdk/NodeListExecutor;->extraFunctionNode(Lcom/miui/voicesdk/ActionNode;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v14

    invoke-interface {v13}, Ljava/util/List;->clear()V

    goto/16 :goto_2

    :cond_14
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/accessibility/AccessibilityNodeInfo;

    goto/16 :goto_2

    :cond_15
    iget-object v0, v4, Lcom/miui/voicesdk/ActionNode;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1d

    const/4 v9, 0x0

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v20

    const-string/jumbo v21, "NodeListExecutor"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, " actionNode.text "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v4, Lcom/miui/voicesdk/ActionNode;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v4, Lcom/miui/voicesdk/ActionNode;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string/jumbo v21, "|"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_19

    iget-object v9, v4, Lcom/miui/voicesdk/ActionNode;->text:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/voicesdk/NodeListExecutor;->mRootNodeInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v20, v0

    iget-object v0, v4, Lcom/miui/voicesdk/ActionNode;->text:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_16

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v20

    if-nez v20, :cond_17

    :cond_16
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/voicesdk/NodeListExecutor;->mRootNodeInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v20, v0

    iget-object v0, v4, Lcom/miui/voicesdk/ActionNode;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    sget-object v22, Lcom/miui/voicesdk/util/Utils$FindBy;->TEXT:Lcom/miui/voicesdk/util/Utils$FindBy;

    iget-object v0, v4, Lcom/miui/voicesdk/ActionNode;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-static {v13, v0, v1, v2, v3}, Lcom/miui/voicesdk/util/Utils;->findNodeByTextOrId(Ljava/util/List;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Lcom/miui/voicesdk/util/Utils$FindBy;Ljava/lang/String;)Z

    :cond_17
    :goto_4
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_18
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_d

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v9, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_18

    move-object v14, v12

    goto/16 :goto_2

    :cond_19
    iget-object v0, v4, Lcom/miui/voicesdk/ActionNode;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string/jumbo v21, "\\|"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    const/16 v20, 0x0

    :goto_5
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_17

    aget-object v16, v17, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/voicesdk/NodeListExecutor;->mRootNodeInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_1a

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v22

    if-nez v22, :cond_1b

    :cond_1a
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/voicesdk/NodeListExecutor;->mRootNodeInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v22, v0

    iget-object v0, v4, Lcom/miui/voicesdk/ActionNode;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    sget-object v24, Lcom/miui/voicesdk/util/Utils$FindBy;->TEXT:Lcom/miui/voicesdk/util/Utils$FindBy;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v16

    invoke-static {v13, v0, v1, v2, v3}, Lcom/miui/voicesdk/util/Utils;->findNodeByTextOrId(Ljava/util/List;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Lcom/miui/voicesdk/util/Utils$FindBy;Ljava/lang/String;)Z

    :cond_1b
    if-eqz v13, :cond_1c

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_1c

    move-object/from16 v9, v16

    goto :goto_4

    :cond_1c
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    :cond_1d
    iget-object v0, v4, Lcom/miui/voicesdk/ActionNode;->extra:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/voicesdk/NodeListExecutor;->mRootNodeInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v4, v1}, Lcom/miui/voicesdk/NodeListExecutor;->extraFunctionNode(Lcom/miui/voicesdk/ActionNode;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v14

    goto/16 :goto_2

    :cond_1e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/voicesdk/NodeListExecutor;->mRootNodeInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    goto/16 :goto_2

    :cond_1f
    const-string/jumbo v20, "multiclick"

    iget-object v0, v4, Lcom/miui/voicesdk/ActionNode;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_20

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, Lcom/miui/voicesdk/NodeListExecutor;->multiClickNode(Ljava/util/List;Lcom/miui/voicesdk/ActionNode;)Z

    move-result v5

    goto/16 :goto_1

    :cond_20
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4}, Lcom/miui/voicesdk/NodeListExecutor;->clickNode(Landroid/view/accessibility/AccessibilityNodeInfo;Lcom/miui/voicesdk/ActionNode;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v5

    goto/16 :goto_1
.end method

.method private doCurrentNodeDelay(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/voicesdk/NodeListExecutor;->computeExecuteNodeDelayTime(I)J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/voicesdk/NodeListExecutor;->doCurrentNodeDelay(IJ)V

    return-void
.end method

.method private doCurrentNodeDelay(IJ)V
    .locals 6

    const/16 v5, 0x3e8

    iget-boolean v1, p0, Lcom/miui/voicesdk/NodeListExecutor;->mStop:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/voicesdk/NodeListExecutor;->mIsInstRunning:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/voicesdk/NodeListExecutor;->mExecuteHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v1

    const-string/jumbo v2, "NodeListExecutor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "doCurrentActionDelay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/voicesdk/NodeListExecutor;->mExecuteHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/voicesdk/NodeListExecutor;->mNodeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_2

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v1

    const-string/jumbo v2, "NodeListExecutor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stop:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/miui/voicesdk/NodeListExecutor;->mStop:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/voicesdk/NodeListExecutor;->mNodeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/miui/voicesdk/NodeListExecutor;->finish(IZ)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/miui/voicesdk/NodeListExecutor;->mExecuteHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v5, v0, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/voicesdk/NodeListExecutor;->mExecuteHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-static {p2, p3}, Lcom/miui/voicesdk/VoiceSdkTimeStatDebug;->statIncreaseSleepTime(J)V

    goto :goto_0
.end method

.method private doNodePath(Lcom/miui/voicesdk/ActionNode;Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    iget-object v5, p1, Lcom/miui/voicesdk/ActionNode;->path:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move v3, v4

    :cond_1
    :goto_0
    return v3

    :cond_2
    const/4 v2, 0x0

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v5

    const-string/jumbo v6, "NodeListExecutor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " actionNode.path "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/miui/voicesdk/ActionNode;->path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p1, Lcom/miui/voicesdk/ActionNode;->path:Ljava/lang/String;

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p1, Lcom/miui/voicesdk/ActionNode;->path:Ljava/lang/String;

    const-string/jumbo v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v3, p1, Lcom/miui/voicesdk/ActionNode;->path:Ljava/lang/String;

    invoke-direct {p0, v3, p2}, Lcom/miui/voicesdk/NodeListExecutor;->findNodeByPath(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/miui/voicesdk/NodeListExecutor;->clickNode(Landroid/view/accessibility/AccessibilityNodeInfo;Lcom/miui/voicesdk/ActionNode;)Z

    move-result v3

    goto :goto_0

    :cond_3
    iget-object v5, p1, Lcom/miui/voicesdk/ActionNode;->path:Ljava/lang/String;

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p1, Lcom/miui/voicesdk/ActionNode;->path:Ljava/lang/String;

    const-string/jumbo v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p1, Lcom/miui/voicesdk/ActionNode;->path:Ljava/lang/String;

    const-string/jumbo v6, "\\|"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    array-length v5, v1

    if-ge v0, v5, :cond_6

    aget-object v5, v1, v0

    invoke-direct {p0, v5, p2}, Lcom/miui/voicesdk/NodeListExecutor;->findNodeByPath(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Lcom/miui/voicesdk/NodeListExecutor;->clickNode(Landroid/view/accessibility/AccessibilityNodeInfo;Lcom/miui/voicesdk/ActionNode;)Z

    move-result v5

    if-nez v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v5, p1, Lcom/miui/voicesdk/ActionNode;->path:Ljava/lang/String;

    const-string/jumbo v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p1, Lcom/miui/voicesdk/ActionNode;->path:Ljava/lang/String;

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p1, Lcom/miui/voicesdk/ActionNode;->path:Ljava/lang/String;

    const-string/jumbo v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_2
    array-length v5, v1

    if-ge v0, v5, :cond_1

    aget-object v5, v1, v0

    invoke-direct {p0, v5, p2}, Lcom/miui/voicesdk/NodeListExecutor;->findNodeByPath(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Lcom/miui/voicesdk/NodeListExecutor;->clickNode(Landroid/view/accessibility/AccessibilityNodeInfo;Lcom/miui/voicesdk/ActionNode;)Z

    move-result v5

    if-nez v5, :cond_5

    move v3, v4

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    move v3, v4

    goto/16 :goto_0
.end method

.method private extraFunctionNode(Lcom/miui/voicesdk/ActionNode;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 11

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/miui/voicesdk/ActionNode;->getExtra()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "classname"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v7, ""

    invoke-static {v4, p2, v6, v7}, Lcom/miui/voicesdk/util/Utils;->findByClassName(Ljava/util/List;Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v5, v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v5

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v7

    const-string/jumbo v8, "NodeListExecutor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "extraFunctionNode "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/miui/voicesdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private findNodeByPath(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 10

    :try_start_0
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    const-string/jumbo v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v6

    const-string/jumbo v7, "NodeListExecutor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "findNodeByPath "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    if-nez v4, :cond_3

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v6

    const-string/jumbo v7, "NodeListExecutor"

    const-string/jumbo v8, " nodeInfo == null"

    invoke-virtual {v6, v7, v8}, Lcom/miui/voicesdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v4, :cond_1

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v6

    const-string/jumbo v7, "NodeListExecutor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " nodeInfoClass "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " nodeInfoId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " nodeInfoCount "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v5, :cond_2

    if-eqz v4, :cond_7

    move-object v3, v4

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    :cond_2
    :goto_1
    return-object v4

    :cond_3
    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v6

    const-string/jumbo v7, "NodeListExecutor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " nodeInfoClass "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " nodeInfoId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " nodeInfoCount "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x23

    if-ne v6, v7, :cond_5

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2c

    if-ne v6, v7, :cond_6

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    const/4 v5, 0x0

    goto :goto_2

    :cond_6
    mul-int/lit8 v6, v5, 0xa

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v6, -0x30

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v6

    const-string/jumbo v7, "NodeListExecutor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " sub "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_4

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    const/4 v5, 0x0

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v6

    const-string/jumbo v7, "NodeListExecutor"

    const-string/jumbo v8, " nodeInfo == null"

    invoke-virtual {v6, v7, v8}, Lcom/miui/voicesdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v6

    const-string/jumbo v7, "NodeListExecutor"

    const-string/jumbo v8, "findNodeByPath"

    invoke-virtual {v6, v7, v8, v0}, Lcom/miui/voicesdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v4, 0x0

    goto/16 :goto_1
.end method

.method private finish(IZ)V
    .locals 8

    invoke-direct {p0}, Lcom/miui/voicesdk/NodeListExecutor;->removeErrorMsg()V

    invoke-direct {p0}, Lcom/miui/voicesdk/NodeListExecutor;->removeActionMsg()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/voicesdk/NodeListExecutor;->mStop:Z

    iget-object v2, p0, Lcom/miui/voicesdk/NodeListExecutor;->mCallback:Lcom/miui/voicesdk/ActionCallback;

    if-eqz v2, :cond_0

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v2

    const-string/jumbo v3, "NodeListExecutor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " stop execute(sucess) -> index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/voicesdk/NodeListExecutor;->mCallback:Lcom/miui/voicesdk/ActionCallback;

    new-instance v3, Lcom/miui/voicesdk/ActionStatus;

    invoke-direct {v3, p1}, Lcom/miui/voicesdk/ActionStatus;-><init>(I)V

    invoke-interface {v2, v3}, Lcom/miui/voicesdk/ActionCallback;->onActionCallback(Lcom/miui/voicesdk/ActionStatus;)Z

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/miui/voicesdk/NodeListExecutor;->mNodeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void

    :cond_1
    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v2

    const-string/jumbo v3, "NodeListExecutor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " stop execute(fail) -> index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/voicesdk/ActionStatus;

    sget v2, Lcom/miui/voicesdk/ActionStatus;->STATUS_ITEM_CONTROL_ERROR:I

    invoke-direct {v0, p1, v2}, Lcom/miui/voicesdk/ActionStatus;-><init>(II)V

    iget-object v2, p0, Lcom/miui/voicesdk/NodeListExecutor;->mNodeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    iget-object v2, p0, Lcom/miui/voicesdk/NodeListExecutor;->mNodeList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/voicesdk/ActionNode;

    invoke-virtual {v0, v2}, Lcom/miui/voicesdk/ActionStatus;->setActionNode(Lcom/miui/voicesdk/ActionNode;)V

    :cond_2
    iget-object v2, p0, Lcom/miui/voicesdk/NodeListExecutor;->mRootNodeInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/voicesdk/NodeListExecutor;->mRootNodeInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/voicesdk/ActionStatus;->setRootNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :goto_1
    iget-object v2, p0, Lcom/miui/voicesdk/NodeListExecutor;->mCallback:Lcom/miui/voicesdk/ActionCallback;

    invoke-interface {v2, v0}, Lcom/miui/voicesdk/ActionCallback;->onActionCallback(Lcom/miui/voicesdk/ActionStatus;)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/miui/voicesdk/VoiceAccessibilityService;->getLastRootWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/voicesdk/ActionStatus;->setRootNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_1
.end method

.method private initialize(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/voicesdk/ActionNode;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/miui/voicesdk/NodeListExecutor;->mNodeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/miui/voicesdk/NodeListExecutor;->mNodeList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iput v2, p0, Lcom/miui/voicesdk/NodeListExecutor;->mIndex:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/voicesdk/NodeListExecutor;->mIsScrollable:Z

    iput-boolean v2, p0, Lcom/miui/voicesdk/NodeListExecutor;->mIsInstRunning:Z

    iput-boolean v2, p0, Lcom/miui/voicesdk/NodeListExecutor;->mStop:Z

    iput v2, p0, Lcom/miui/voicesdk/NodeListExecutor;->mSimulateScrollDuration:I

    iput v2, p0, Lcom/miui/voicesdk/NodeListExecutor;->mKeyClickCount:I

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/miui/voicesdk/NodeListExecutor;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/voicesdk/NodeListExecutor;->mNodeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/voicesdk/ActionNode;

    invoke-virtual {v0}, Lcom/miui/voicesdk/ActionNode;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/miui/voicesdk/ActionNode;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/voicesdk/NodeListExecutor;->mPackageName:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private multiClickNode(Ljava/util/List;Lcom/miui/voicesdk/ActionNode;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Lcom/miui/voicesdk/ActionNode;",
            ")Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    if-nez p2, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    :try_start_0
    iget-object v8, p2, Lcom/miui/voicesdk/ActionNode;->words:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v6, :cond_5

    if-gt v6, v4, :cond_5

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_4

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v8

    const-string/jumbo v9, "NodeListExecutor"

    const-string/jumbo v10, "multiClickNode "

    invoke-virtual {v8, v9, v10, v1}, Lcom/miui/voicesdk/util/LogUtils;->ani(Ljava/lang/String;Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x10

    invoke-virtual {v1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v8

    const-string/jumbo v9, "NodeListExecutor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "multiClickNode clicked: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v2, v6, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v8

    const-string/jumbo v9, "NodeListExecutor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "multiClickNode multiNum: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " findNum: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/miui/voicesdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v8

    const-string/jumbo v9, "NodeListExecutor"

    const-string/jumbo v10, "multiClickNode "

    invoke-virtual {v8, v9, v10, v3}, Lcom/miui/voicesdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private removeActionMsg()V
    .locals 5

    const/16 v4, 0x3e8

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v0

    const-string/jumbo v1, "NodeListExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeActionMsg -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/voicesdk/NodeListExecutor;->mExecuteHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/voicesdk/NodeListExecutor;->mExecuteHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private removeErrorMsg()V
    .locals 5

    const/16 v4, 0x3e9

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v0

    const-string/jumbo v1, "NodeListExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendError removeErrorMsg -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/voicesdk/NodeListExecutor;->mExecuteHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/voicesdk/NodeListExecutor;->mExecuteHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private sendError(IJ)V
    .locals 6

    const/16 v5, 0x3e9

    iget-object v1, p0, Lcom/miui/voicesdk/NodeListExecutor;->mExecuteHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v1

    const-string/jumbo v2, "NodeListExecutor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendError -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/voicesdk/NodeListExecutor;->mExecuteHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/voicesdk/NodeListExecutor;->removeErrorMsg()V

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v1

    const-string/jumbo v2, "NodeListExecutor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " sendError "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  delayMillis:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/miui/voicesdk/NodeListExecutor;->mIndex:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v5, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/miui/voicesdk/NodeListExecutor;->mExecuteHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method


# virtual methods
.method public beginExecute(Ljava/util/List;Lcom/miui/voicesdk/ActionCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/voicesdk/ActionNode;",
            ">;",
            "Lcom/miui/voicesdk/ActionCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/miui/voicesdk/NodeListExecutor;->initialize(Ljava/util/List;)V

    invoke-virtual {p0, p2}, Lcom/miui/voicesdk/NodeListExecutor;->setCallback(Lcom/miui/voicesdk/ActionCallback;)V

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v0

    const-string/jumbo v1, "NodeListExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "begin execute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/voicesdk/NodeListExecutor;->mNodeList:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " callback:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/voicesdk/NodeListExecutor;->mCallback:Lcom/miui/voicesdk/ActionCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v0

    const-string/jumbo v1, "NodeListExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "begin execute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/voicesdk/NodeListExecutor;->mNodeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/voicesdk/NodeListExecutor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/voicesdk/util/AccessibilityUtil;->isAccessibilitySettingsOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/voicesdk/NodeListExecutor;->updateAccessibilityService(ZLcom/miui/voicesdk/ActionCallback;)V

    :cond_1
    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v0

    const-string/jumbo v1, "NodeListExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start mSimulateScrollDuration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/voicesdk/NodeListExecutor;->mSimulateScrollDuration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/voicesdk/NodeListExecutor;->mIndex:I

    invoke-direct {p0, v0}, Lcom/miui/voicesdk/NodeListExecutor;->doCurrentNodeDelay(I)V

    goto :goto_0
.end method

.method public clickBackKey(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lcom/miui/voicesdk/VoiceAccessibilityService;->getVoiceServiceInstance()Lcom/miui/voicesdk/VoiceAccessibilityService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/voicesdk/VoiceAccessibilityService;->getVoiceServiceInstance()Lcom/miui/voicesdk/VoiceAccessibilityService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/voicesdk/VoiceAccessibilityService;->performGlobalAction(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clickButton(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9

    invoke-static {}, Lcom/miui/voicesdk/VoiceAccessibilityService;->getLastRootWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v5

    const-string/jumbo v6, "NodeListExecutor"

    const-string/jumbo v7, "clickButton info -> "

    invoke-virtual {v5, v6, v7, v3}, Lcom/miui/voicesdk/util/LogUtils;->ani(Ljava/lang/String;Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    if-eqz p1, :cond_0

    if-eqz v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v5

    const-string/jumbo v6, "NodeListExecutor"

    const-string/jumbo v7, "context is null or key is empty or sRootInfo is null"

    invoke-virtual {v5, v6, v7}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v5

    const-string/jumbo v6, "NodeListExecutor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "key -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v3, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v5

    const-string/jumbo v6, "NodeListExecutor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "clickButton infos size -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v6

    const-string/jumbo v7, "NodeListExecutor"

    const-string/jumbo v8, "clickButton info "

    invoke-virtual {v6, v7, v8, v0}, Lcom/miui/voicesdk/util/LogUtils;->ani(Ljava/lang/String;Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v4, v0

    :cond_3
    :goto_1
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v5

    const-string/jumbo v6, "NodeListExecutor"

    const-string/jumbo v7, "infos is empty, sRootInfo -> "

    invoke-virtual {v5, v6, v7, v3}, Lcom/miui/voicesdk/util/LogUtils;->ani(Ljava/lang/String;Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v5

    const-string/jumbo v6, "NodeListExecutor"

    const-string/jumbo v7, "infos is null"

    invoke-virtual {v5, v6, v7}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v2

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v5

    const-string/jumbo v6, "NodeListExecutor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "clickButton -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v5

    const-string/jumbo v6, "NodeListExecutor"

    const-string/jumbo v7, "findNode is null"

    invoke-virtual {v5, v6, v7}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public lock()V
    .locals 6

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v0

    const-string/jumbo v1, "NodeListExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " stop execute(lock) -> index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/voicesdk/NodeListExecutor;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/voicesdk/NodeListExecutor;->removeErrorMsg()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/voicesdk/NodeListExecutor;->mStop:Z

    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "com.android.systemui"

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/miui/voicesdk/VoiceAccessibilityService;->isKeyEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/voicesdk/NodeListExecutor;->mCallback:Lcom/miui/voicesdk/ActionCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/voicesdk/NodeListExecutor;->mBackNavDes:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/voicesdk/NodeListExecutor;->mCallback:Lcom/miui/voicesdk/ActionCallback;

    new-instance v2, Lcom/miui/voicesdk/ActionStatus;

    iget v3, p0, Lcom/miui/voicesdk/NodeListExecutor;->mIndex:I

    sget v4, Lcom/miui/voicesdk/ActionStatus;->STATUS_KEY_BACK:I

    invoke-direct {v2, v3, v4}, Lcom/miui/voicesdk/ActionStatus;-><init>(II)V

    invoke-interface {v1, v2}, Lcom/miui/voicesdk/ActionCallback;->onActionCallback(Lcom/miui/voicesdk/ActionStatus;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/miui/voicesdk/NodeListExecutor;->mCallback:Lcom/miui/voicesdk/ActionCallback;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/voicesdk/NodeListExecutor;->mStop:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v1

    const-string/jumbo v2, "NodeListExecutor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " view click event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/voicesdk/ActionStatus;

    iget v1, p0, Lcom/miui/voicesdk/NodeListExecutor;->mIndex:I

    sget v2, Lcom/miui/voicesdk/ActionStatus;->STATUS_VIEW_CLICK:I

    invoke-direct {v0, v1, v2}, Lcom/miui/voicesdk/ActionStatus;-><init>(II)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/voicesdk/ActionStatus;->setRootNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v1, p0, Lcom/miui/voicesdk/NodeListExecutor;->mCallback:Lcom/miui/voicesdk/ActionCallback;

    invoke-interface {v1, v0}, Lcom/miui/voicesdk/ActionCallback;->onActionCallback(Lcom/miui/voicesdk/ActionStatus;)Z

    goto :goto_0
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v1

    const-string/jumbo v2, "NodeListExecutor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onKeyEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/voicesdk/NodeListExecutor;->mCallback:Lcom/miui/voicesdk/ActionCallback;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    new-instance v0, Lcom/miui/voicesdk/ActionStatus;

    iget v1, p0, Lcom/miui/voicesdk/NodeListExecutor;->mIndex:I

    sget v2, Lcom/miui/voicesdk/ActionStatus;->STATUS_KEY_BACK:I

    invoke-direct {v0, v1, v2}, Lcom/miui/voicesdk/ActionStatus;-><init>(II)V

    invoke-virtual {v0, p1}, Lcom/miui/voicesdk/ActionStatus;->setKeyEvent(Landroid/view/KeyEvent;)V

    iget-object v1, p0, Lcom/miui/voicesdk/NodeListExecutor;->mCallback:Lcom/miui/voicesdk/ActionCallback;

    invoke-interface {v1, v0}, Lcom/miui/voicesdk/ActionCallback;->onActionCallback(Lcom/miui/voicesdk/ActionStatus;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onServiceConnected()V
    .locals 2

    iget-object v0, p0, Lcom/miui/voicesdk/NodeListExecutor;->mExecuteHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/voicesdk/NodeListExecutor$2;

    invoke-direct {v1, p0}, Lcom/miui/voicesdk/NodeListExecutor$2;-><init>(Lcom/miui/voicesdk/NodeListExecutor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setCallback(Lcom/miui/voicesdk/ActionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/voicesdk/NodeListExecutor;->mCallback:Lcom/miui/voicesdk/ActionCallback;

    return-void
.end method

.method public unlock(ILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/miui/voicesdk/ActionNode;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v0

    const-string/jumbo v1, "NodeListExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " restart execute(unlock) -> index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/voicesdk/NodeListExecutor;->mNodeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/voicesdk/NodeListExecutor;->mNodeList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/voicesdk/NodeListExecutor;->mStop:Z

    iput p1, p0, Lcom/miui/voicesdk/NodeListExecutor;->mIndex:I

    iget v0, p0, Lcom/miui/voicesdk/NodeListExecutor;->mIndex:I

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/miui/voicesdk/NodeListExecutor;->doCurrentNodeDelay(IJ)V

    return-void
.end method

.method public updateAccessibilityService(ZLcom/miui/voicesdk/ActionCallback;)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/miui/voicesdk/NodeListExecutor;->setCallback(Lcom/miui/voicesdk/ActionCallback;)V

    :cond_0
    invoke-static {}, Lcom/miui/voicesdk/util/LogUtils;->getInstance()Lcom/miui/voicesdk/util/LogUtils;

    move-result-object v0

    const-string/jumbo v1, "NodeListExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAccessibilityService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/voicesdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/miui/voicesdk/VoiceAccessibilityService;->addAccessibilityServiceListener(Lcom/miui/voicesdk/AccessilibilityServiceListener;)V

    iget-object v0, p0, Lcom/miui/voicesdk/NodeListExecutor;->mContext:Landroid/content/Context;

    const-class v1, Lcom/miui/voicesdk/VoiceAccessibilityService;

    invoke-static {v0, v1}, Lcom/miui/voicesdk/util/AccessibilityUtil;->enableAccessibility(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/voicesdk/NodeListExecutor;->mContext:Landroid/content/Context;

    const-class v1, Lcom/miui/voicesdk/VoiceAccessibilityService;

    invoke-static {v0, v1}, Lcom/miui/voicesdk/util/AccessibilityUtil;->closeAccessibility(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, v4}, Lcom/miui/voicesdk/NodeListExecutor;->initialize(Ljava/util/List;)V

    invoke-virtual {p0, v4}, Lcom/miui/voicesdk/NodeListExecutor;->setCallback(Lcom/miui/voicesdk/ActionCallback;)V

    invoke-static {p0}, Lcom/miui/voicesdk/VoiceAccessibilityService;->removeAccessibilityServiceListener(Lcom/miui/voicesdk/AccessilibilityServiceListener;)V

    goto :goto_0
.end method
