.class public final synthetic Lcom/miui/video/biz/pgc/fragment/-$$Lambda$SubscribeFragment$yqxSG2eENbQ3-iESzESrhagDoEQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/video/common/feed/architeture/action/ActionListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/video/biz/pgc/fragment/-$$Lambda$SubscribeFragment$yqxSG2eENbQ3-iESzESrhagDoEQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/video/biz/pgc/fragment/-$$Lambda$SubscribeFragment$yqxSG2eENbQ3-iESzESrhagDoEQ;

    invoke-direct {v0}, Lcom/miui/video/biz/pgc/fragment/-$$Lambda$SubscribeFragment$yqxSG2eENbQ3-iESzESrhagDoEQ;-><init>()V

    sput-object v0, Lcom/miui/video/biz/pgc/fragment/-$$Lambda$SubscribeFragment$yqxSG2eENbQ3-iESzESrhagDoEQ;->INSTANCE:Lcom/miui/video/biz/pgc/fragment/-$$Lambda$SubscribeFragment$yqxSG2eENbQ3-iESzESrhagDoEQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Landroid/content/Context;ILjava/lang/Object;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V
    .locals 0

    check-cast p3, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    invoke-static {p1, p2, p3, p4}, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;->lambda$registerAction$7(Landroid/content/Context;ILcom/miui/video/common/feed/entity/TinyCardEntity;Lcom/miui/video/common/feed/recyclerview/UIRecyclerBase;)V

    return-void
.end method
