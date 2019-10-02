.class public Lcom/mixpanel/android/mpmetrics/Tweaks;
.super Ljava/lang/Object;
.source "Tweaks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mixpanel/android/mpmetrics/Tweaks$OnTweakDeclaredListener;,
        Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;
    }
.end annotation


# static fields
.field public static final BOOLEAN_TYPE:I = 0x1

.field public static final DOUBLE_TYPE:I = 0x2

.field private static final LOGTAG:Ljava/lang/String; = "MixpanelAPI.Tweaks"

.field public static final LONG_TYPE:I = 0x3

.field public static final STRING_TYPE:I = 0x4


# instance fields
.field private final mTweakDeclaredListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mixpanel/android/mpmetrics/Tweaks$OnTweakDeclaredListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTweakDefaultValues:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;",
            ">;"
        }
    .end annotation
.end field

.field private final mTweakValues:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;",
            ">;"
        }
    .end annotation
.end field

.field private final mUndeclaredTweaks:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/Tweaks;->mTweakValues:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/Tweaks;->mTweakDefaultValues:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/Tweaks;->mUndeclaredTweaks:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/Tweaks;->mTweakDeclaredListeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Lcom/mixpanel/android/mpmetrics/Tweaks;Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;
    .locals 0

    invoke-direct {p0, p1}, Lcom/mixpanel/android/mpmetrics/Tweaks;->getValue(Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized getValue(Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/Tweaks;->mTweakValues:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized addOnTweakDeclaredListener(Lcom/mixpanel/android/mpmetrics/Tweaks$OnTweakDeclaredListener;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/Tweaks;->mTweakDeclaredListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "listener cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addUndeclaredTweak(Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/Tweaks;->mUndeclaredTweaks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method booleanTweak(Ljava/lang/String;Z)Lcom/mixpanel/android/mpmetrics/Tweak;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/mixpanel/android/mpmetrics/Tweak<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mixpanel/android/mpmetrics/Tweaks;->declareTweak(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Number;Ljava/lang/Number;I)V

    new-instance p2, Lcom/mixpanel/android/mpmetrics/Tweaks$12;

    invoke-direct {p2, p0, p1}, Lcom/mixpanel/android/mpmetrics/Tweaks$12;-><init>(Lcom/mixpanel/android/mpmetrics/Tweaks;Ljava/lang/String;)V

    return-object p2
.end method

.method byteTweak(Ljava/lang/String;B)Lcom/mixpanel/android/mpmetrics/Tweak;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "B)",
            "Lcom/mixpanel/android/mpmetrics/Tweak<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mixpanel/android/mpmetrics/Tweaks;->declareTweak(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Number;Ljava/lang/Number;I)V

    new-instance p2, Lcom/mixpanel/android/mpmetrics/Tweaks$10;

    invoke-direct {p2, p0, p1}, Lcom/mixpanel/android/mpmetrics/Tweaks$10;-><init>(Lcom/mixpanel/android/mpmetrics/Tweaks;Ljava/lang/String;)V

    return-object p2
.end method

.method public declareTweak(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Number;Ljava/lang/Number;I)V
    .locals 9

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/Tweaks;->mTweakValues:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "MixpanelAPI.Tweaks"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Attempt to define a tweak \""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" twice with the same name"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/mixpanel/android/util/MPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/Tweaks;->mUndeclaredTweaks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p0, Lcom/mixpanel/android/mpmetrics/Tweaks;->mUndeclaredTweaks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;

    iget-object p3, p0, Lcom/mixpanel/android/mpmetrics/Tweaks;->mUndeclaredTweaks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p3, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v8, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;

    const/4 v7, 0x0

    move-object v0, v8

    move v1, p5

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;-><init>(ILjava/lang/Object;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Object;Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/Tweaks$1;)V

    move-object p2, v8

    :goto_0
    iget-object p3, p0, Lcom/mixpanel/android/mpmetrics/Tweaks;->mTweakValues:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p3, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lcom/mixpanel/android/mpmetrics/Tweaks;->mTweakDefaultValues:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p3, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/Tweaks;->mTweakDeclaredListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p1, :cond_2

    iget-object p3, p0, Lcom/mixpanel/android/mpmetrics/Tweaks;->mTweakDeclaredListeners:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mixpanel/android/mpmetrics/Tweaks$OnTweakDeclaredListener;

    invoke-interface {p3}, Lcom/mixpanel/android/mpmetrics/Tweaks$OnTweakDeclaredListener;->onTweakDeclared()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method doubleTweak(Ljava/lang/String;D)Lcom/mixpanel/android/mpmetrics/Tweak;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)",
            "Lcom/mixpanel/android/mpmetrics/Tweak<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mixpanel/android/mpmetrics/Tweaks;->declareTweak(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Number;Ljava/lang/Number;I)V

    new-instance p2, Lcom/mixpanel/android/mpmetrics/Tweaks$2;

    invoke-direct {p2, p0, p1}, Lcom/mixpanel/android/mpmetrics/Tweaks$2;-><init>(Lcom/mixpanel/android/mpmetrics/Tweaks;Ljava/lang/String;)V

    return-object p2
.end method

.method doubleTweak(Ljava/lang/String;DDD)Lcom/mixpanel/android/mpmetrics/Tweak;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDD)",
            "Lcom/mixpanel/android/mpmetrics/Tweak<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p5

    invoke-static {p6, p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p6

    const/4 p7, 0x2

    move-object p2, p0

    move-object p3, p1

    move-object p4, v0

    invoke-virtual/range {p2 .. p7}, Lcom/mixpanel/android/mpmetrics/Tweaks;->declareTweak(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Number;Ljava/lang/Number;I)V

    new-instance p2, Lcom/mixpanel/android/mpmetrics/Tweaks$3;

    invoke-direct {p2, p0, p1}, Lcom/mixpanel/android/mpmetrics/Tweaks$3;-><init>(Lcom/mixpanel/android/mpmetrics/Tweaks;Ljava/lang/String;)V

    return-object p2
.end method

.method floatTweak(Ljava/lang/String;F)Lcom/mixpanel/android/mpmetrics/Tweak;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)",
            "Lcom/mixpanel/android/mpmetrics/Tweak<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mixpanel/android/mpmetrics/Tweaks;->declareTweak(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Number;Ljava/lang/Number;I)V

    new-instance p2, Lcom/mixpanel/android/mpmetrics/Tweaks$4;

    invoke-direct {p2, p0, p1}, Lcom/mixpanel/android/mpmetrics/Tweaks$4;-><init>(Lcom/mixpanel/android/mpmetrics/Tweaks;Ljava/lang/String;)V

    return-object p2
.end method

.method floatTweak(Ljava/lang/String;FFF)Lcom/mixpanel/android/mpmetrics/Tweak;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "FFF)",
            "Lcom/mixpanel/android/mpmetrics/Tweak<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mixpanel/android/mpmetrics/Tweaks;->declareTweak(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Number;Ljava/lang/Number;I)V

    new-instance p2, Lcom/mixpanel/android/mpmetrics/Tweaks$5;

    invoke-direct {p2, p0, p1}, Lcom/mixpanel/android/mpmetrics/Tweaks$5;-><init>(Lcom/mixpanel/android/mpmetrics/Tweaks;Ljava/lang/String;)V

    return-object p2
.end method

.method public declared-synchronized getAllValues()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/Tweaks;->mTweakValues:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultValues()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/Tweaks;->mTweakDefaultValues:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method intTweak(Ljava/lang/String;I)Lcom/mixpanel/android/mpmetrics/Tweak;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/mixpanel/android/mpmetrics/Tweak<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mixpanel/android/mpmetrics/Tweaks;->declareTweak(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Number;Ljava/lang/Number;I)V

    new-instance p2, Lcom/mixpanel/android/mpmetrics/Tweaks$8;

    invoke-direct {p2, p0, p1}, Lcom/mixpanel/android/mpmetrics/Tweaks$8;-><init>(Lcom/mixpanel/android/mpmetrics/Tweaks;Ljava/lang/String;)V

    return-object p2
.end method

.method intTweak(Ljava/lang/String;III)Lcom/mixpanel/android/mpmetrics/Tweak;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)",
            "Lcom/mixpanel/android/mpmetrics/Tweak<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mixpanel/android/mpmetrics/Tweaks;->declareTweak(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Number;Ljava/lang/Number;I)V

    new-instance p2, Lcom/mixpanel/android/mpmetrics/Tweaks$9;

    invoke-direct {p2, p0, p1}, Lcom/mixpanel/android/mpmetrics/Tweaks$9;-><init>(Lcom/mixpanel/android/mpmetrics/Tweaks;Ljava/lang/String;)V

    return-object p2
.end method

.method public declared-synchronized isNewValue(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/Tweaks;->mTweakValues:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/Tweaks;->mTweakValues:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;

    invoke-static {p1}, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->access$000(Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/lit8 p1, p1, 0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method longTweak(Ljava/lang/String;J)Lcom/mixpanel/android/mpmetrics/Tweak;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lcom/mixpanel/android/mpmetrics/Tweak<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mixpanel/android/mpmetrics/Tweaks;->declareTweak(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Number;Ljava/lang/Number;I)V

    new-instance p2, Lcom/mixpanel/android/mpmetrics/Tweaks$6;

    invoke-direct {p2, p0, p1}, Lcom/mixpanel/android/mpmetrics/Tweaks$6;-><init>(Lcom/mixpanel/android/mpmetrics/Tweaks;Ljava/lang/String;)V

    return-object p2
.end method

.method longTweak(Ljava/lang/String;JJJ)Lcom/mixpanel/android/mpmetrics/Tweak;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJJ)",
            "Lcom/mixpanel/android/mpmetrics/Tweak<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    const/4 p7, 0x3

    move-object p2, p0

    move-object p3, p1

    move-object p4, v0

    invoke-virtual/range {p2 .. p7}, Lcom/mixpanel/android/mpmetrics/Tweaks;->declareTweak(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Number;Ljava/lang/Number;I)V

    new-instance p2, Lcom/mixpanel/android/mpmetrics/Tweaks$7;

    invoke-direct {p2, p0, p1}, Lcom/mixpanel/android/mpmetrics/Tweaks$7;-><init>(Lcom/mixpanel/android/mpmetrics/Tweaks;Ljava/lang/String;)V

    return-object p2
.end method

.method public declared-synchronized set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/Tweaks;->mTweakValues:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p2, "MixpanelAPI.Tweaks"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to set a tweak \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" which has never been defined."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/mixpanel/android/util/MPLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/Tweaks;->mTweakValues:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;

    invoke-virtual {v0, p2}, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->updateValue(Ljava/lang/Object;)Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;

    move-result-object p2

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/Tweaks;->mTweakValues:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method shortTweak(Ljava/lang/String;S)Lcom/mixpanel/android/mpmetrics/Tweak;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "S)",
            "Lcom/mixpanel/android/mpmetrics/Tweak<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mixpanel/android/mpmetrics/Tweaks;->declareTweak(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Number;Ljava/lang/Number;I)V

    new-instance p2, Lcom/mixpanel/android/mpmetrics/Tweaks$11;

    invoke-direct {p2, p0, p1}, Lcom/mixpanel/android/mpmetrics/Tweaks$11;-><init>(Lcom/mixpanel/android/mpmetrics/Tweaks;Ljava/lang/String;)V

    return-object p2
.end method

.method stringTweak(Ljava/lang/String;Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/Tweak;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/mixpanel/android/mpmetrics/Tweak<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/mixpanel/android/mpmetrics/Tweaks;->declareTweak(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Number;Ljava/lang/Number;I)V

    new-instance p2, Lcom/mixpanel/android/mpmetrics/Tweaks$1;

    invoke-direct {p2, p0, p1}, Lcom/mixpanel/android/mpmetrics/Tweaks$1;-><init>(Lcom/mixpanel/android/mpmetrics/Tweaks;Ljava/lang/String;)V

    return-object p2
.end method
