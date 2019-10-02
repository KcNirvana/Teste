.class public final Lcom/ooyala/adtech/TrackingEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final AD_IMPRESSION:Lcom/ooyala/adtech/TrackingEvent;

.field public static final AD_IMPRESSION_NOT_VIEWABLE:Lcom/ooyala/adtech/TrackingEvent;

.field public static final AD_IMPRESSION_VIEWABLE:Lcom/ooyala/adtech/TrackingEvent;

.field public static final AD_IMPRESSION_VIEW_UNDETERMINED:Lcom/ooyala/adtech/TrackingEvent;

.field public static final CREATIVE_ACCEPT_INVITATION:Lcom/ooyala/adtech/TrackingEvent;

.field public static final CREATIVE_CLICK_THROUGH:Lcom/ooyala/adtech/TrackingEvent;

.field public static final CREATIVE_CLOSE:Lcom/ooyala/adtech/TrackingEvent;

.field public static final CREATIVE_COLLAPSE:Lcom/ooyala/adtech/TrackingEvent;

.field public static final CREATIVE_COMPLETE:Lcom/ooyala/adtech/TrackingEvent;

.field public static final CREATIVE_EXIT_FULLSCREEN:Lcom/ooyala/adtech/TrackingEvent;

.field public static final CREATIVE_EXPAND:Lcom/ooyala/adtech/TrackingEvent;

.field public static final CREATIVE_FIRST_QUARTILE:Lcom/ooyala/adtech/TrackingEvent;

.field public static final CREATIVE_FULLSCREEN:Lcom/ooyala/adtech/TrackingEvent;

.field public static final CREATIVE_MID_POINT:Lcom/ooyala/adtech/TrackingEvent;

.field public static final CREATIVE_MUTE:Lcom/ooyala/adtech/TrackingEvent;

.field public static final CREATIVE_PAUSE:Lcom/ooyala/adtech/TrackingEvent;

.field public static final CREATIVE_RESUME:Lcom/ooyala/adtech/TrackingEvent;

.field public static final CREATIVE_REWIND:Lcom/ooyala/adtech/TrackingEvent;

.field public static final CREATIVE_SKIP:Lcom/ooyala/adtech/TrackingEvent;

.field public static final CREATIVE_START:Lcom/ooyala/adtech/TrackingEvent;

.field public static final CREATIVE_THIRD_QUARTILE:Lcom/ooyala/adtech/TrackingEvent;

.field public static final CREATIVE_UNMUTE:Lcom/ooyala/adtech/TrackingEvent;

.field public static final CREATIVE_VIEW:Lcom/ooyala/adtech/TrackingEvent;

.field public static final SESSION_CONTENT_START:Lcom/ooyala/adtech/TrackingEvent;

.field static final d:Lcom/ooyala/adtech/TrackingEvent;

.field static final e:Lcom/ooyala/adtech/TrackingEvent;

.field static final f:Lcom/ooyala/adtech/TrackingEvent;

.field static final g:Lcom/ooyala/adtech/TrackingEvent;

.field static final h:Lcom/ooyala/adtech/TrackingEvent;

.field static final i:Lcom/ooyala/adtech/TrackingEvent;

.field static final j:Lcom/ooyala/adtech/TrackingEvent;

.field private static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ooyala/adtech/TrackingEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Ljava/lang/String;

.field final b:Z

.field final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ooyala/adtech/TrackingEvent;->k:Ljava/util/Map;

    new-instance v0, Lcom/ooyala/adtech/TrackingEvent;

    const-string v1, "SESSION_CONTENT_START"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/ooyala/adtech/TrackingEvent;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/ooyala/adtech/TrackingEvent;->SESSION_CONTENT_START:Lcom/ooyala/adtech/TrackingEvent;

    new-instance v0, Lcom/ooyala/adtech/TrackingEvent;

    const-string v1, "AD_IMPRESSION"

    invoke-direct {v0, v1, v2, v3}, Lcom/ooyala/adtech/TrackingEvent;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/ooyala/adtech/TrackingEvent;->AD_IMPRESSION:Lcom/ooyala/adtech/TrackingEvent;

    new-instance v0, Lcom/ooyala/adtech/TrackingEvent;

    const-string v1, "CREATIVE_VIEW"

    invoke-direct {v0, v1, v2, v3}, Lcom/ooyala/adtech/TrackingEvent;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_VIEW:Lcom/ooyala/adtech/TrackingEvent;

    new-instance v0, Lcom/ooyala/adtech/TrackingEvent;

    const-string v1, "CREATIVE_START"

    invoke-direct {v0, v1, v2, v3}, Lcom/ooyala/adtech/TrackingEvent;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_START:Lcom/ooyala/adtech/TrackingEvent;

    new-instance v0, Lcom/ooyala/adtech/TrackingEvent;

    const-string v1, "CREATIVE_FIRST_QUARTILE"

    invoke-direct {v0, v1, v2, v3}, Lcom/ooyala/adtech/TrackingEvent;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_FIRST_QUARTILE:Lcom/ooyala/adtech/TrackingEvent;

    new-instance v0, Lcom/ooyala/adtech/TrackingEvent;

    const-string v1, "CREATIVE_MID_POINT"

    invoke-direct {v0, v1, v2, v3}, Lcom/ooyala/adtech/TrackingEvent;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_MID_POINT:Lcom/ooyala/adtech/TrackingEvent;

    new-instance v0, Lcom/ooyala/adtech/TrackingEvent;

    const-string v1, "CREATIVE_THIRD_QUARTILE"

    invoke-direct {v0, v1, v2, v3}, Lcom/ooyala/adtech/TrackingEvent;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_THIRD_QUARTILE:Lcom/ooyala/adtech/TrackingEvent;

    new-instance v0, Lcom/ooyala/adtech/TrackingEvent;

    const-string v1, "CREATIVE_COMPLETE"

    invoke-direct {v0, v1, v2, v3}, Lcom/ooyala/adtech/TrackingEvent;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_COMPLETE:Lcom/ooyala/adtech/TrackingEvent;

    new-instance v0, Lcom/ooyala/adtech/TrackingEvent;

    const-string v1, "CREATIVE_CLICK_THROUGH"

    invoke-direct {v0, v1, v3, v2}, Lcom/ooyala/adtech/TrackingEvent;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_CLICK_THROUGH:Lcom/ooyala/adtech/TrackingEvent;

    new-instance v0, Lcom/ooyala/adtech/TrackingEvent;

    const-string v1, "CREATIVE_MUTE"

    invoke-direct {v0, v1, v3, v2}, Lcom/ooyala/adtech/TrackingEvent;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_MUTE:Lcom/ooyala/adtech/TrackingEvent;

    new-instance v0, Lcom/ooyala/adtech/TrackingEvent;

    const-string v1, "CREATIVE_UNMUTE"

    invoke-direct {v0, v1, v3, v2}, Lcom/ooyala/adtech/TrackingEvent;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_UNMUTE:Lcom/ooyala/adtech/TrackingEvent;

    new-instance v0, Lcom/ooyala/adtech/TrackingEvent;

    const-string v1, "CREATIVE_PAUSE"

    invoke-direct {v0, v1, v3, v2}, Lcom/ooyala/adtech/TrackingEvent;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_PAUSE:Lcom/ooyala/adtech/TrackingEvent;

    new-instance v0, Lcom/ooyala/adtech/TrackingEvent;

    const-string v1, "CREATIVE_REWIND"

    invoke-direct {v0, v1, v3, v2}, Lcom/ooyala/adtech/TrackingEvent;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_REWIND:Lcom/ooyala/adtech/TrackingEvent;

    new-instance v0, Lcom/ooyala/adtech/TrackingEvent;

    const-string v1, "CREATIVE_RESUME"

    invoke-direct {v0, v1, v3, v2}, Lcom/ooyala/adtech/TrackingEvent;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_RESUME:Lcom/ooyala/adtech/TrackingEvent;

    new-instance v0, Lcom/ooyala/adtech/TrackingEvent;

    const-string v1, "CREATIVE_FULLSCREEN"

    invoke-direct {v0, v1, v3, v2}, Lcom/ooyala/adtech/TrackingEvent;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_FULLSCREEN:Lcom/ooyala/adtech/TrackingEvent;

    new-instance v0, Lcom/ooyala/adtech/TrackingEvent;

    const-string v1, "CREATIVE_EXIT_FULLSCREEN"

    invoke-direct {v0, v1, v3, v2}, Lcom/ooyala/adtech/TrackingEvent;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_EXIT_FULLSCREEN:Lcom/ooyala/adtech/TrackingEvent;

    new-instance v0, Lcom/ooyala/adtech/TrackingEvent;

    const-string v1, "CREATIVE_EXPAND"

    invoke-direct {v0, v1, v3, v2}, Lcom/ooyala/adtech/TrackingEvent;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_EXPAND:Lcom/ooyala/adtech/TrackingEvent;

    new-instance v0, Lcom/ooyala/adtech/TrackingEvent;

    const-string v1, "CREATIVE_COLLAPSE"

    invoke-direct {v0, v1, v3, v2}, Lcom/ooyala/adtech/TrackingEvent;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_COLLAPSE:Lcom/ooyala/adtech/TrackingEvent;

    new-instance v0, Lcom/ooyala/adtech/TrackingEvent;

    const-string v1, "CREATIVE_ACCEPT_INVITATION"

    invoke-direct {v0, v1, v3, v2}, Lcom/ooyala/adtech/TrackingEvent;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_ACCEPT_INVITATION:Lcom/ooyala/adtech/TrackingEvent;

    new-instance v0, Lcom/ooyala/adtech/TrackingEvent;

    const-string v1, "CREATIVE_CLOSE"

    invoke-direct {v0, v1, v3, v2}, Lcom/ooyala/adtech/TrackingEvent;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_CLOSE:Lcom/ooyala/adtech/TrackingEvent;

    new-instance v0, Lcom/ooyala/adtech/TrackingEvent;

    const-string v1, "CREATIVE_SKIP"

    invoke-direct {v0, v1, v3, v2}, Lcom/ooyala/adtech/TrackingEvent;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/ooyala/adtech/TrackingEvent;->CREATIVE_SKIP:Lcom/ooyala/adtech/TrackingEvent;

    new-instance v0, Lcom/ooyala/adtech/TrackingEvent;

    const-string v1, "AD_IMPRESSION_VIEWABLE"

    invoke-direct {v0, v1, v2, v3}, Lcom/ooyala/adtech/TrackingEvent;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/ooyala/adtech/TrackingEvent;->AD_IMPRESSION_VIEWABLE:Lcom/ooyala/adtech/TrackingEvent;

    new-instance v0, Lcom/ooyala/adtech/TrackingEvent;

    const-string v1, "AD_IMPRESSION_NOT_VIEWABLE"

    invoke-direct {v0, v1, v2, v3}, Lcom/ooyala/adtech/TrackingEvent;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/ooyala/adtech/TrackingEvent;->AD_IMPRESSION_NOT_VIEWABLE:Lcom/ooyala/adtech/TrackingEvent;

    new-instance v0, Lcom/ooyala/adtech/TrackingEvent;

    const-string v1, "AD_IMPRESSION_VIEW_UNDETERMINED"

    invoke-direct {v0, v1, v2, v3}, Lcom/ooyala/adtech/TrackingEvent;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/ooyala/adtech/TrackingEvent;->AD_IMPRESSION_VIEW_UNDETERMINED:Lcom/ooyala/adtech/TrackingEvent;

    new-instance v0, Lcom/ooyala/adtech/TrackingEvent;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v3, v3}, Lcom/ooyala/adtech/TrackingEvent;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/ooyala/adtech/TrackingEvent;->d:Lcom/ooyala/adtech/TrackingEvent;

    new-instance v0, Lcom/ooyala/adtech/TrackingEvent;

    const-string v1, "CREATIVE_TIME_SPENT"

    invoke-direct {v0, v1, v3, v3}, Lcom/ooyala/adtech/TrackingEvent;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/ooyala/adtech/TrackingEvent;->e:Lcom/ooyala/adtech/TrackingEvent;

    new-instance v0, Lcom/ooyala/adtech/TrackingEvent;

    const-string v1, "CREATIVE_PROGRESS"

    invoke-direct {v0, v1, v3, v3}, Lcom/ooyala/adtech/TrackingEvent;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/ooyala/adtech/TrackingEvent;->f:Lcom/ooyala/adtech/TrackingEvent;

    new-instance v0, Lcom/ooyala/adtech/TrackingEvent;

    const-string v1, "CREATIVE_INTERACTION"

    invoke-direct {v0, v1, v2, v3}, Lcom/ooyala/adtech/TrackingEvent;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/ooyala/adtech/TrackingEvent;->g:Lcom/ooyala/adtech/TrackingEvent;

    new-instance v0, Lcom/ooyala/adtech/TrackingEvent;

    const-string v1, "SLOT_START"

    invoke-direct {v0, v1, v2, v3}, Lcom/ooyala/adtech/TrackingEvent;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/ooyala/adtech/TrackingEvent;->h:Lcom/ooyala/adtech/TrackingEvent;

    new-instance v0, Lcom/ooyala/adtech/TrackingEvent;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v2, v3}, Lcom/ooyala/adtech/TrackingEvent;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/ooyala/adtech/TrackingEvent;->i:Lcom/ooyala/adtech/TrackingEvent;

    new-instance v0, Lcom/ooyala/adtech/TrackingEvent;

    const-string v1, "REPORT"

    invoke-direct {v0, v1, v2, v3}, Lcom/ooyala/adtech/TrackingEvent;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/ooyala/adtech/TrackingEvent;->j:Lcom/ooyala/adtech/TrackingEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/ooyala/adtech/TrackingEvent;->k:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/ooyala/adtech/TrackingEvent;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/ooyala/adtech/TrackingEvent;->b:Z

    iput-boolean p3, p0, Lcom/ooyala/adtech/TrackingEvent;->c:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ooyala/adtech/TrackingEvent;
    .locals 1

    if-eqz p0, :cond_1

    sget-object v0, Lcom/ooyala/adtech/TrackingEvent;->k:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/adtech/TrackingEvent;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ooyala/adtech/TrackingEvent;->k:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ooyala/adtech/TrackingEvent;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No member exists with that name."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Parameter name cannot be null."

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ooyala/adtech/TrackingEvent;->a:Ljava/lang/String;

    return-object v0
.end method
