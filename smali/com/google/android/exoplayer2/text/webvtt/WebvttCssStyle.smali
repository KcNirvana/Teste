.class public final Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;
.super Ljava/lang/Object;
.source "WebvttCssStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle$FontSizeUnit;,
        Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle$StyleFlags;
    }
.end annotation


# static fields
.field public static final FONT_SIZE_UNIT_EM:I = 0x2

.field public static final FONT_SIZE_UNIT_PERCENT:I = 0x3

.field public static final FONT_SIZE_UNIT_PIXEL:I = 0x1

.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1

.field public static final STYLE_BOLD:I = 0x1

.field public static final STYLE_BOLD_ITALIC:I = 0x3

.field public static final STYLE_ITALIC:I = 0x2

.field public static final STYLE_NORMAL:I = 0x0

.field public static final UNSPECIFIED:I = -0x1


# instance fields
.field private backgroundColor:I

.field private bold:I

.field private fontColor:I

.field private fontFamily:Ljava/lang/String;

.field private fontSize:F

.field private fontSizeUnit:I

.field private hasBackgroundColor:Z

.field private hasFontColor:Z

.field private italic:I

.field private linethrough:I

.field private targetClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private targetId:Ljava/lang/String;

.field private targetTag:Ljava/lang/String;

.field private targetVoice:Ljava/lang/String;

.field private textAlign:Landroid/text/Layout$Alignment;

.field private underline:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->reset()V

    return-void
.end method

.method private static updateScoreForMatch(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int v0, p0, p3

    :cond_1
    return v0

    :cond_2
    :goto_0
    return p0
.end method


# virtual methods
.method public cascadeFrom(Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;)V
    .locals 2

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->hasFontColor:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->fontColor:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->setFontColor(I)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;

    :cond_0
    iget v0, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->bold:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->bold:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->bold:I

    :cond_1
    iget v0, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->italic:I

    if-eq v0, v1, :cond_2

    iget v0, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->italic:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->italic:I

    :cond_2
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->fontFamily:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->fontFamily:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->fontFamily:Ljava/lang/String;

    :cond_3
    iget v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->linethrough:I

    if-ne v0, v1, :cond_4

    iget v0, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->linethrough:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->linethrough:I

    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->underline:I

    if-ne v0, v1, :cond_5

    iget v0, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->underline:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->underline:I

    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->textAlign:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->textAlign:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->textAlign:Landroid/text/Layout$Alignment;

    :cond_6
    iget v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    if-ne v0, v1, :cond_7

    iget v0, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    iget v0, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->fontSize:F

    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->fontSize:F

    :cond_7
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->hasBackgroundColor:Z

    if-eqz v0, :cond_8

    iget p1, p1, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->backgroundColor:I

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->setBackgroundColor(I)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;

    :cond_8
    return-void
.end method

.method public getBackgroundColor()I
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->hasBackgroundColor:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->backgroundColor:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Background color not defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFontColor()I
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->hasFontColor:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->fontColor:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Font color not defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFontFamily()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->fontFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getFontSize()F
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->fontSize:F

    return v0
.end method

.method public getFontSizeUnit()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    return v0
.end method

.method public getSpecificityScore(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->targetId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->targetTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->targetVoice:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->targetId:Ljava/lang/String;

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    invoke-static {v2, v0, p1, v1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->updateScoreForMatch(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->targetTag:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p1, v0, p2, v1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->updateScoreForMatch(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->targetVoice:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {p1, p2, p4, v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->updateScoreForMatch(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    add-int/2addr p1, p2

    return p1

    :cond_2
    :goto_0
    return v2
.end method

.method public getStyle()I
    .locals 4

    iget v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->bold:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->italic:I

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->bold:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->italic:I

    if-ne v3, v2, :cond_2

    const/4 v1, 0x2

    :cond_2
    or-int/2addr v0, v1

    return v0
.end method

.method public getTextAlign()Landroid/text/Layout$Alignment;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->textAlign:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public hasBackgroundColor()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->hasBackgroundColor:Z

    return v0
.end method

.method public hasFontColor()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->hasFontColor:Z

    return v0
.end method

.method public isLinethrough()Z
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->linethrough:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isUnderline()Z
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->underline:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public reset()V
    .locals 2

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->targetId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->targetTag:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->targetVoice:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->fontFamily:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->hasFontColor:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->hasBackgroundColor:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->linethrough:I

    iput v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->underline:I

    iput v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->bold:I

    iput v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->italic:I

    iput v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->textAlign:Landroid/text/Layout$Alignment;

    return-void
.end method

.method public setBackgroundColor(I)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->backgroundColor:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->hasBackgroundColor:Z

    return-object p0
.end method

.method public setBold(Z)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->bold:I

    return-object p0
.end method

.method public setFontColor(I)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->fontColor:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->hasFontColor:Z

    return-object p0
.end method

.method public setFontFamily(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;
    .locals 0

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->fontFamily:Ljava/lang/String;

    return-object p0
.end method

.method public setFontSize(F)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->fontSize:F

    return-object p0
.end method

.method public setFontSizeUnit(S)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    return-object p0
.end method

.method public setItalic(Z)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->italic:I

    return-object p0
.end method

.method public setLinethrough(Z)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->linethrough:I

    return-object p0
.end method

.method public setTargetClasses([Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/List;

    return-void
.end method

.method public setTargetId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->targetId:Ljava/lang/String;

    return-void
.end method

.method public setTargetTagName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->targetTag:Ljava/lang/String;

    return-void
.end method

.method public setTargetVoice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->targetVoice:Ljava/lang/String;

    return-void
.end method

.method public setTextAlign(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->textAlign:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public setUnderline(Z)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->underline:I

    return-object p0
.end method
