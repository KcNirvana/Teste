.class public Lcom/miui/personalassistant/express/util/CodeConverter;
.super Ljava/lang/Object;
.source "CodeConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/express/util/CodeConverter$cpCode;,
        Lcom/miui/personalassistant/express/util/CodeConverter$bizCode;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/miui/personalassistant/express/util/CodeConverter;


# instance fields
.field private convertMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private convertStateMap:Landroid/util/SparseIntArray;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/miui/personalassistant/express/util/CodeConverter;->initConverter()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/personalassistant/express/util/CodeConverter;
    .locals 2

    const-class v1, Lcom/miui/personalassistant/express/util/CodeConverter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/personalassistant/express/util/CodeConverter;->sInstance:Lcom/miui/personalassistant/express/util/CodeConverter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/personalassistant/express/util/CodeConverter;

    invoke-direct {v0}, Lcom/miui/personalassistant/express/util/CodeConverter;-><init>()V

    sput-object v0, Lcom/miui/personalassistant/express/util/CodeConverter;->sInstance:Lcom/miui/personalassistant/express/util/CodeConverter;

    :cond_0
    sget-object v0, Lcom/miui/personalassistant/express/util/CodeConverter;->sInstance:Lcom/miui/personalassistant/express/util/CodeConverter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initConvertMap()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertMap:Ljava/util/Map;

    const-string/jumbo v1, "shunfeng"

    const-string/jumbo v2, "SF"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertMap:Ljava/util/Map;

    const-string/jumbo v1, "shentong"

    const-string/jumbo v2, "STO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertMap:Ljava/util/Map;

    const-string/jumbo v1, "yuantong"

    const-string/jumbo v2, "YTO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertMap:Ljava/util/Map;

    const-string/jumbo v1, "zhongtong"

    const-string/jumbo v2, "ZTO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertMap:Ljava/util/Map;

    const-string/jumbo v1, "guotongkuaidi"

    const-string/jumbo v2, "GTO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertMap:Ljava/util/Map;

    const-string/jumbo v1, "debangwuliu"

    const-string/jumbo v2, "DBL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertMap:Ljava/util/Map;

    const-string/jumbo v1, "youzhengguonei"

    const-string/jumbo v2, "POSTB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertMap:Ljava/util/Map;

    const-string/jumbo v1, "youzhengguoji"

    const-string/jumbo v2, "CNPOSTGJ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertMap:Ljava/util/Map;

    const-string/jumbo v1, "ems"

    const-string/jumbo v2, "EMS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertMap:Ljava/util/Map;

    const-string/jumbo v1, "emsguoji"

    const-string/jumbo v2, "EMSGJ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertMap:Ljava/util/Map;

    const-string/jumbo v1, "yunda"

    const-string/jumbo v2, "YUNDA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertMap:Ljava/util/Map;

    const-string/jumbo v1, "huitongkuaidi"

    const-string/jumbo v2, "HTKY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertMap:Ljava/util/Map;

    const-string/jumbo v1, "quanfengkuaidi"

    const-string/jumbo v2, "QFKD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertMap:Ljava/util/Map;

    const-string/jumbo v1, "rufengda"

    const-string/jumbo v2, "RFD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertMap:Ljava/util/Map;

    const-string/jumbo v1, "zhongtiekuaiyun"

    const-string/jumbo v2, "CRE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertMap:Ljava/util/Map;

    const-string/jumbo v1, "ups"

    const-string/jumbo v2, "UPS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertMap:Ljava/util/Map;

    const-string/jumbo v1, "dhl"

    const-string/jumbo v2, "DHL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertMap:Ljava/util/Map;

    const-string/jumbo v1, "tiantian"

    const-string/jumbo v2, "TTKDEX"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertMap:Ljava/util/Map;

    const-string/jumbo v1, "kuaijiesudi"

    const-string/jumbo v2, "FAST"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertMap:Ljava/util/Map;

    const-string/jumbo v1, "jd"

    const-string/jumbo v2, "JDKD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertMap:Ljava/util/Map;

    const-string/jumbo v1, "jiayiwuliu"

    const-string/jumbo v2, "JIAYI"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertMap:Ljava/util/Map;

    const-string/jumbo v1, "baishiwuliu"

    const-string/jumbo v2, "BESTQJT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertMap:Ljava/util/Map;

    const-string/jumbo v1, "yousuwuliu"

    const-string/jumbo v2, "UC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertMap:Ljava/util/Map;

    const-string/jumbo v1, "wanxiangwuliu"

    const-string/jumbo v2, "EWINSHINE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertMap:Ljava/util/Map;

    const-string/jumbo v1, "chengbang"

    const-string/jumbo v2, "CHENGBANG"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertMap:Ljava/util/Map;

    const-string/jumbo v1, "suning"

    const-string/jumbo v2, "SNWL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertMap:Ljava/util/Map;

    const-string/jumbo v1, "zhimakaimen"

    const-string/jumbo v2, "ZMKM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertMap:Ljava/util/Map;

    const-string/jumbo v1, "annengwuliu"

    const-string/jumbo v2, "ANE56"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertMap:Ljava/util/Map;

    const-string/jumbo v1, "longbangwuliu"

    const-string/jumbo v2, "LB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initConvertStateMap()V
    .locals 4

    const/4 v3, -0x1

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertStateMap:Landroid/util/SparseIntArray;

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertStateMap:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/miui/personalassistant/express/bean/ExpressState;->DELIVERED:Lcom/miui/personalassistant/express/bean/ExpressState;

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/bean/ExpressState;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertStateMap:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/miui/personalassistant/express/bean/ExpressState;->ON_THE_WAY:Lcom/miui/personalassistant/express/bean/ExpressState;

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/bean/ExpressState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertStateMap:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/miui/personalassistant/express/bean/ExpressState;->DISPATCHING:Lcom/miui/personalassistant/express/bean/ExpressState;

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/bean/ExpressState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertStateMap:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/miui/personalassistant/express/bean/ExpressState;->DIFFICULT_GOODS:Lcom/miui/personalassistant/express/bean/ExpressState;

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/bean/ExpressState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertStateMap:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/miui/personalassistant/express/bean/ExpressState;->SIGNED_RETURN:Lcom/miui/personalassistant/express/bean/ExpressState;

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/bean/ExpressState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertStateMap:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/miui/personalassistant/express/bean/ExpressState;->RECEIPTED:Lcom/miui/personalassistant/express/bean/ExpressState;

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/bean/ExpressState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertStateMap:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/miui/personalassistant/express/bean/ExpressState;->RETURNED:Lcom/miui/personalassistant/express/bean/ExpressState;

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/bean/ExpressState;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertStateMap:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/miui/personalassistant/express/bean/ExpressState;->UNKNOWN:Lcom/miui/personalassistant/express/bean/ExpressState;

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/bean/ExpressState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertStateMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method private initConverter()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/express/util/CodeConverter;->initConvertMap()V

    invoke-direct {p0}, Lcom/miui/personalassistant/express/util/CodeConverter;->initConvertStateMap()V

    return-void
.end method


# virtual methods
.method public convertCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public convertState(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/util/CodeConverter;->convertStateMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method
