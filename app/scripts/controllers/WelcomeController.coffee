###!
Copyright (c) 2002-2016 "Neo Technology,"
Network Engine for Objects in Lund AB [http://neotechnology.com]

This file is part of Neo4j.

Neo4j is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
###

'use strict'

angular.module('neo4jApp.controllers')
  .controller 'WelcomeController', [
    '$scope'
    'Settings'
    'Frame'
    ($scope, Settings, Frame) ->
      $scope.settings = Settings
      $scope.show.sidebar = no
      $scope.show.editor = no

      $scope.skipIntro = () ->
        $scope.show.sidebar = yes
        $scope.show.editor = yes
        Frame.closeWhere "#{Settings.cmdchar}play welcome"
        Frame.create({input:"#{Settings.initCmd}"})

  ]