.class public interface abstract Lcom/rockrobo/map/MapPainterI;
.super Ljava/lang/Object;


# virtual methods
.method public abstract center()V
.end method

.method public abstract drawBackground(Landroid/graphics/Canvas;)V
.end method

.method public abstract drawCleanInfo(Landroid/graphics/Canvas;)V
.end method

.method public abstract drawDock(Landroid/graphics/Canvas;)V
.end method

.method public abstract drawMap(Landroid/graphics/Canvas;)V
.end method

.method public abstract drawMapLoadingScene(Landroid/graphics/Canvas;J)V
.end method

.method public abstract drawNoMapPrompt(Landroid/graphics/Canvas;)V
.end method

.method public abstract drawRobot(Landroid/graphics/Canvas;)V
.end method

.method public abstract drawSpottingRobot(Landroid/graphics/Canvas;FFFI[FI)V
.end method

.method public abstract drawStatus(Landroid/graphics/Canvas;)V
.end method

.method public abstract drawStatusInfoBackground(Landroid/graphics/Canvas;)V
.end method

.method public abstract drawTargetBackground(Landroid/graphics/Canvas;)V
.end method

.method public abstract mapPresent()Z
.end method

.method public abstract maskOutPixels(Landroid/graphics/Canvas;)V
.end method

.method public abstract releaseResources()V
.end method

.method public abstract scaleMap(FFF)V
.end method

.method public abstract setCleanInfo(Lcom/rockrobo/common/CleanInfo;)V
.end method

.method public abstract setMapInfo(Lcom/rockrobo/map/MapInfo;)V
.end method

.method public abstract setRobotStatus(Lcom/rockrobo/clean/RobotStatus;Lcom/rockrobo/clean/CleanStrategy;)V
.end method

.method public abstract setViewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method public abstract translate(FFFF)V
.end method
