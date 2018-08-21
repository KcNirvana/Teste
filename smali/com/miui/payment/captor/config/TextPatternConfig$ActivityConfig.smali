.class public Lcom/miui/payment/captor/config/TextPatternConfig$ActivityConfig;
.super Ljava/lang/Object;
.source "TextPatternConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/payment/captor/config/TextPatternConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityConfig"
.end annotation


# instance fields
.field private activity:Ljava/lang/String;

.field private textPatterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/captor/config/TextPattern;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/captor/config/TextPatternConfig$ActivityConfig;->activity:Ljava/lang/String;

    return-object v0
.end method

.method public getTextPatterns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/captor/config/TextPattern;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/payment/captor/config/TextPatternConfig$ActivityConfig;->textPatterns:Ljava/util/List;

    return-object v0
.end method

.method public setActivity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/captor/config/TextPatternConfig$ActivityConfig;->activity:Ljava/lang/String;

    return-void
.end method

.method public setTextPatterns(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/captor/config/TextPattern;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/payment/captor/config/TextPatternConfig$ActivityConfig;->textPatterns:Ljava/util/List;

    return-void
.end method
