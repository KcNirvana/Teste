.class public Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;
.super Ljava/lang/Object;
.source "Tweaks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/mpmetrics/Tweaks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TweakValue"
.end annotation


# instance fields
.field private final defaultValue:Ljava/lang/Object;

.field private final maximum:Ljava/lang/Number;

.field private final minimum:Ljava/lang/Number;

.field private final name:Ljava/lang/String;

.field public final type:I

.field private final value:Ljava/lang/Object;


# direct methods
.method private constructor <init>(ILjava/lang/Object;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->type:I

    iput-object p6, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->minimum:Ljava/lang/Number;

    iput-object p4, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->maximum:Ljava/lang/Number;

    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->minimum:Ljava/lang/Number;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->maximum:Ljava/lang/Number;

    if-eqz p1, :cond_1

    invoke-direct {p0, p2}, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->isBetweenBounds(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    iget-object p3, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->minimum:Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide p3

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iget-object p3, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->maximum:Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide p3

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p1, "MixpanelAPI.Tweaks"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Attempt to define a tweak \""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->name:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\" with default value "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " out of its bounds ["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->minimum:Ljava/lang/Number;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->maximum:Ljava/lang/Number;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, "]Tweak \""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->name:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\" new default value: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, "."

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/mixpanel/android/util/MPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p5}, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->isBetweenBounds(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    check-cast p5, Ljava/lang/Number;

    invoke-virtual {p5}, Ljava/lang/Number;->longValue()J

    move-result-wide p3

    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->minimum:Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p5

    invoke-static {p3, p4, p5, p6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->maximum:Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p5

    invoke-static {p3, p4, p5, p6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    const-string p1, "MixpanelAPI.Tweaks"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Attempt to define a tweak \""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->name:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\" with value "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " out of its bounds ["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->minimum:Ljava/lang/Number;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->maximum:Ljava/lang/Number;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, "]Tweak \""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->name:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\" new value: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, "."

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/mixpanel/android/util/MPLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->defaultValue:Ljava/lang/Object;

    iput-object p5, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->value:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Object;Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/Tweaks$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;-><init>(ILjava/lang/Object;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "number"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v1, "encoding"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "d"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    const-string v2, "value"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "default"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v4, "minimum"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "minimum"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    const-string v5, "maximum"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "maximum"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_2

    :cond_1
    move-object p0, v0

    goto :goto_2

    :cond_2
    const-string v2, "l"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "value"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v1, 0x3

    const-string v3, "default"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "minimum"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "minimum"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v4, v0

    :goto_1
    const-string v5, "maximum"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "maximum"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_2
    move-object v6, p0

    move-object v7, v2

    move-object v5, v4

    move-object v4, v3

    move v3, v1

    goto :goto_3

    :cond_4
    return-object v0

    :cond_5
    const-string v2, "boolean"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v1, 0x1

    const-string v2, "value"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "default"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    move-object v4, p0

    move-object v5, v0

    move-object v6, v5

    move-object v7, v2

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    const-string v2, "string"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x4

    const-string v2, "value"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "default"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v4, p0

    move-object v5, v0

    move-object v6, v5

    move-object v7, v2

    const/4 v3, 0x4

    :goto_3
    new-instance p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;-><init>(ILjava/lang/Object;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_7
    return-object v0

    :catch_0
    return-object v0
.end method

.method private isBetweenBounds(Ljava/lang/Object;)Z
    .locals 4

    :try_start_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->minimum:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->maximum:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->minimum:Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->minimum:Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->maximum:Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->maximum:Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    return p1

    :catch_0
    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public getBooleanValue()Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->defaultValue:Ljava/lang/Object;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->defaultValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    :cond_0
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->value:Ljava/lang/Object;

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :catch_1
    :cond_1
    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->defaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getMaximum()Ljava/lang/Number;
    .locals 1

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->maximum:Ljava/lang/Number;

    return-object v0
.end method

.method public getMinimum()Ljava/lang/Number;
    .locals 1

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->minimum:Ljava/lang/Number;

    return-object v0
.end method

.method public getNumberValue()Ljava/lang/Number;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->defaultValue:Ljava/lang/Object;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->defaultValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    :cond_0
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->value:Ljava/lang/Object;

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :catch_1
    :cond_1
    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->defaultValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :catch_1
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public updateValue(Ljava/lang/Object;)Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;
    .locals 8

    new-instance v7, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;

    iget v1, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->type:I

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->defaultValue:Ljava/lang/Object;

    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->minimum:Ljava/lang/Number;

    iget-object v4, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->maximum:Ljava/lang/Number;

    iget-object v6, p0, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;->name:Ljava/lang/String;

    move-object v0, v7

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/mixpanel/android/mpmetrics/Tweaks$TweakValue;-><init>(ILjava/lang/Object;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v7
.end method
